// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 * THIS FILE HAS BEEN GENERATED USING multi_tools_project CODEGEN
 * IF YOU NEED TO MAKE EDITS TO IT, EDIT codegen/caravel_iface_header.txt
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
)(
`ifdef USE_POWER_PINS
    inout vdda1,       // User area 1 3.3V supply
    inout vdda2,       // User area 2 3.3V supply
    inout vssa1,       // User area 1 analog ground
    inout vssa2,       // User area 2 analog ground
    inout vccd1,       // User area 1 1.8V supply
    inout vccd2,       // User area 2 1.8v supply
    inout vssd1,       // User area 1 digital ground
    inout vssd2,       // User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

    // start of module instantiation

    localparam NUM_MACROS = 100;
    wire [NUM_MACROS:0] data;
    assign mprj_io[9] = data[0];
    assign mprj_io[12] = data[NUM_MACROS];
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_0 (
        .clk            (mprj_io[8]),
        .data_in        (data[0]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[1])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_1 (
        .clk            (mprj_io[8]),
        .data_in        (data[1]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[2])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_2 (
        .clk            (mprj_io[8]),
        .data_in        (data[2]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[3])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_3 (
        .clk            (mprj_io[8]),
        .data_in        (data[3]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[4])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_4 (
        .clk            (mprj_io[8]),
        .data_in        (data[4]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[5])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_5 (
        .clk            (mprj_io[8]),
        .data_in        (data[5]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[6])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_6 (
        .clk            (mprj_io[8]),
        .data_in        (data[6]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[7])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_7 (
        .clk            (mprj_io[8]),
        .data_in        (data[7]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[8])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_8 (
        .clk            (mprj_io[8]),
        .data_in        (data[8]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[9])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_9 (
        .clk            (mprj_io[8]),
        .data_in        (data[9]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[10])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_10 (
        .clk            (mprj_io[8]),
        .data_in        (data[10]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[11])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_11 (
        .clk            (mprj_io[8]),
        .data_in        (data[11]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[12])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_12 (
        .clk            (mprj_io[8]),
        .data_in        (data[12]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[13])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_13 (
        .clk            (mprj_io[8]),
        .data_in        (data[13]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[14])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_14 (
        .clk            (mprj_io[8]),
        .data_in        (data[14]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[15])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_15 (
        .clk            (mprj_io[8]),
        .data_in        (data[15]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[16])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_16 (
        .clk            (mprj_io[8]),
        .data_in        (data[16]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[17])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_17 (
        .clk            (mprj_io[8]),
        .data_in        (data[17]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[18])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_18 (
        .clk            (mprj_io[8]),
        .data_in        (data[18]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[19])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_19 (
        .clk            (mprj_io[8]),
        .data_in        (data[19]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[20])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_20 (
        .clk            (mprj_io[8]),
        .data_in        (data[20]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[21])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_21 (
        .clk            (mprj_io[8]),
        .data_in        (data[21]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[22])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_22 (
        .clk            (mprj_io[8]),
        .data_in        (data[22]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[23])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_23 (
        .clk            (mprj_io[8]),
        .data_in        (data[23]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[24])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_24 (
        .clk            (mprj_io[8]),
        .data_in        (data[24]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[25])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_25 (
        .clk            (mprj_io[8]),
        .data_in        (data[25]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[26])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_26 (
        .clk            (mprj_io[8]),
        .data_in        (data[26]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[27])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_27 (
        .clk            (mprj_io[8]),
        .data_in        (data[27]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[28])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_28 (
        .clk            (mprj_io[8]),
        .data_in        (data[28]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[29])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_29 (
        .clk            (mprj_io[8]),
        .data_in        (data[29]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[30])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_30 (
        .clk            (mprj_io[8]),
        .data_in        (data[30]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[31])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_31 (
        .clk            (mprj_io[8]),
        .data_in        (data[31]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[32])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_32 (
        .clk            (mprj_io[8]),
        .data_in        (data[32]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[33])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_33 (
        .clk            (mprj_io[8]),
        .data_in        (data[33]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[34])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_34 (
        .clk            (mprj_io[8]),
        .data_in        (data[34]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[35])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_35 (
        .clk            (mprj_io[8]),
        .data_in        (data[35]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[36])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_36 (
        .clk            (mprj_io[8]),
        .data_in        (data[36]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[37])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_37 (
        .clk            (mprj_io[8]),
        .data_in        (data[37]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[38])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_38 (
        .clk            (mprj_io[8]),
        .data_in        (data[38]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[39])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_39 (
        .clk            (mprj_io[8]),
        .data_in        (data[39]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[40])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_40 (
        .clk            (mprj_io[8]),
        .data_in        (data[40]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[41])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_41 (
        .clk            (mprj_io[8]),
        .data_in        (data[41]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[42])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_42 (
        .clk            (mprj_io[8]),
        .data_in        (data[42]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[43])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_43 (
        .clk            (mprj_io[8]),
        .data_in        (data[43]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[44])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_44 (
        .clk            (mprj_io[8]),
        .data_in        (data[44]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[45])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_45 (
        .clk            (mprj_io[8]),
        .data_in        (data[45]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[46])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_46 (
        .clk            (mprj_io[8]),
        .data_in        (data[46]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[47])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_47 (
        .clk            (mprj_io[8]),
        .data_in        (data[47]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[48])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_48 (
        .clk            (mprj_io[8]),
        .data_in        (data[48]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[49])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_49 (
        .clk            (mprj_io[8]),
        .data_in        (data[49]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[50])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_50 (
        .clk            (mprj_io[8]),
        .data_in        (data[50]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[51])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_51 (
        .clk            (mprj_io[8]),
        .data_in        (data[51]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[52])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_52 (
        .clk            (mprj_io[8]),
        .data_in        (data[52]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[53])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_53 (
        .clk            (mprj_io[8]),
        .data_in        (data[53]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[54])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_54 (
        .clk            (mprj_io[8]),
        .data_in        (data[54]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[55])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_55 (
        .clk            (mprj_io[8]),
        .data_in        (data[55]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[56])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_56 (
        .clk            (mprj_io[8]),
        .data_in        (data[56]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[57])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_57 (
        .clk            (mprj_io[8]),
        .data_in        (data[57]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[58])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_58 (
        .clk            (mprj_io[8]),
        .data_in        (data[58]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[59])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_59 (
        .clk            (mprj_io[8]),
        .data_in        (data[59]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[60])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_60 (
        .clk            (mprj_io[8]),
        .data_in        (data[60]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[61])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_61 (
        .clk            (mprj_io[8]),
        .data_in        (data[61]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[62])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_62 (
        .clk            (mprj_io[8]),
        .data_in        (data[62]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[63])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_63 (
        .clk            (mprj_io[8]),
        .data_in        (data[63]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[64])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_64 (
        .clk            (mprj_io[8]),
        .data_in        (data[64]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[65])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_65 (
        .clk            (mprj_io[8]),
        .data_in        (data[65]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[66])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_66 (
        .clk            (mprj_io[8]),
        .data_in        (data[66]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[67])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_67 (
        .clk            (mprj_io[8]),
        .data_in        (data[67]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[68])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_68 (
        .clk            (mprj_io[8]),
        .data_in        (data[68]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[69])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_69 (
        .clk            (mprj_io[8]),
        .data_in        (data[69]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[70])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_70 (
        .clk            (mprj_io[8]),
        .data_in        (data[70]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[71])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_71 (
        .clk            (mprj_io[8]),
        .data_in        (data[71]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[72])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_72 (
        .clk            (mprj_io[8]),
        .data_in        (data[72]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[73])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_73 (
        .clk            (mprj_io[8]),
        .data_in        (data[73]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[74])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_74 (
        .clk            (mprj_io[8]),
        .data_in        (data[74]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[75])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_75 (
        .clk            (mprj_io[8]),
        .data_in        (data[75]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[76])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_76 (
        .clk            (mprj_io[8]),
        .data_in        (data[76]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[77])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_77 (
        .clk            (mprj_io[8]),
        .data_in        (data[77]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[78])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_78 (
        .clk            (mprj_io[8]),
        .data_in        (data[78]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[79])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_79 (
        .clk            (mprj_io[8]),
        .data_in        (data[79]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[80])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_80 (
        .clk            (mprj_io[8]),
        .data_in        (data[80]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[81])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_81 (
        .clk            (mprj_io[8]),
        .data_in        (data[81]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[82])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_82 (
        .clk            (mprj_io[8]),
        .data_in        (data[82]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[83])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_83 (
        .clk            (mprj_io[8]),
        .data_in        (data[83]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[84])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_84 (
        .clk            (mprj_io[8]),
        .data_in        (data[84]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[85])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_85 (
        .clk            (mprj_io[8]),
        .data_in        (data[85]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[86])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_86 (
        .clk            (mprj_io[8]),
        .data_in        (data[86]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[87])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_87 (
        .clk            (mprj_io[8]),
        .data_in        (data[87]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[88])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_88 (
        .clk            (mprj_io[8]),
        .data_in        (data[88]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[89])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_89 (
        .clk            (mprj_io[8]),
        .data_in        (data[89]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[90])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_90 (
        .clk            (mprj_io[8]),
        .data_in        (data[90]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[91])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_91 (
        .clk            (mprj_io[8]),
        .data_in        (data[91]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[92])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_92 (
        .clk            (mprj_io[8]),
        .data_in        (data[92]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[93])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_93 (
        .clk            (mprj_io[8]),
        .data_in        (data[93]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[94])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_94 (
        .clk            (mprj_io[8]),
        .data_in        (data[94]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[95])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_95 (
        .clk            (mprj_io[8]),
        .data_in        (data[95]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[96])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_96 (
        .clk            (mprj_io[8]),
        .data_in        (data[96]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[97])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_97 (
        .clk            (mprj_io[8]),
        .data_in        (data[97]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[98])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_98 (
        .clk            (mprj_io[8]),
        .data_in        (data[98]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[99])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_99 (
        .clk            (mprj_io[8]),
        .data_in        (data[99]),
        .scan_select    (mprj_io[10]),
        .latch_enable   (mprj_io[11]),
        .data_out       (data[100])
        );
        // end of module instantiation

endmodule	// user_project_wrapper
`default_nettype wire
