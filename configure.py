#!/usr/bin/env python3
import shutil

# where are things
proj_name = "scan_wrapper_lesson_1"

# create macro file & positions
def create_macro():
    start_x = 80
    start_y = 80
    step_x  = 135
    step_y  = 135 # pdn pitch is 70
    rows = 25
    cols = 20

    num_macros = 0

    with open("openlane/user_project_wrapper/macro.cfg", 'w') as fh:
        fh.write("scan_controller 80 80 N\n")
        for row in range(rows):
            for col in range(cols):
                # skip the space where the scan controller goes on the first row
                if row == 0 and col <= 1:
                    continue
                instance = "instance_%d %d %d N\n" % (num_macros, start_x + col * step_x, start_y + row * step_y)
                fh.write(instance)

                num_macros += 1

    return num_macros

# instantiate inside user_project_wrapper
def instanciate(num_macros):
    assigns = """
    localparam NUM_MACROS = %d;
    wire [NUM_MACROS:0] data, scan, latch, clk;
    wire [8:0] active_select = io_in[20:12];
    wire [7:0] inputs = io_in[28:21];
    wire [7:0] outputs;
    assign io_out[36:29] = outputs;
    wire ready;
    assign io_out[37] = ready;
    """

    scan_controller_template = """
    scan_controller #(.NUM_DESIGNS(NUM_MACROS)) scan_controller(
        .clk            (wb_clk_i),
        .reset          (wb_rst_i),
        .active_select  (active_select),
        .inputs         (inputs),
        .outputs        (outputs),
        .ready          (ready),
        .scan_clk       (clk[0]),
        .scan_data_out  (data[0]),
        .scan_data_in   (data[NUM_MACROS]),
        .scan_select    (scan[0]),
        .scan_latch_enable(latch[0])
    );

    """
    lesson_template = """
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_%d (
        .clk_in          (clk  [%d]),
        .data_in         (data [%d]),
        .scan_select_in  (scan [%d]),
        .latch_enable_in (latch[%d]),
        .clk_out         (clk  [%d]),
        .data_out        (data [%d]),
        .scan_select_out (scan [%d]),
        .latch_enable_out(latch[%d])
        );
    """
    with open('upw_pre.v') as fh:
        pre = fh.read()

    with open('upw_post.v') as fh:
        post = fh.read()

    with open('verilog/rtl/user_project_wrapper.v', 'w') as fh:
        fh.write(pre)
        fh.write(assigns % num_macros)
        fh.write(scan_controller_template)
        for number in range(num_macros):
            # instantiate template
            instance = lesson_template % (number, number, number, number, number, number+1, number+1, number+1, number+1)
            fh.write(instance)
        fh.write(post) 


def copy_gds_lef():
    # gds & lef
    gds = proj_name + '.gds'
    dst = os.path.join("gds", gds) 
    #self.system_config['caravel']['gl_dir'], os.path.basename(self.config['final']['lvs_filename']))
    shutil.copyfile(gds, dst)

    lef = proj_name + '.lef'
    dst = os.path.join("lef", gds) 
    shutil.copyfile(lef, dst)

if __name__ == '__main__':
    num_macros = create_macro()
    instanciate(num_macros)
