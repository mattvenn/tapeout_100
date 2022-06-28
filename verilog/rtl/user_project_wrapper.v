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
    wire [NUM_MACROS:0] data, scan, latch, clk;
    assign clk[0] = mprj_io[8];
    assign data[0] = mprj_io[9];
    assign scan[0] = mprj_io[10];
    assign latch[0] = mprj_io[11];
    assign mprj_io[11] = data[NUM_MACROS];
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_0 (
        .clk_in          (clk  [0]),
        .data_in         (data [0]),
        .scan_select_in  (scan [0]),
        .latch_enable_in (latch[0]),
        .clk_out         (clk  [1]),
        .data_out        (data [1]),
        .scan_select_out (scan [1]),
        .latch_enable_out(latch[1])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_1 (
        .clk_in          (clk  [1]),
        .data_in         (data [1]),
        .scan_select_in  (scan [1]),
        .latch_enable_in (latch[1]),
        .clk_out         (clk  [2]),
        .data_out        (data [2]),
        .scan_select_out (scan [2]),
        .latch_enable_out(latch[2])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_2 (
        .clk_in          (clk  [2]),
        .data_in         (data [2]),
        .scan_select_in  (scan [2]),
        .latch_enable_in (latch[2]),
        .clk_out         (clk  [3]),
        .data_out        (data [3]),
        .scan_select_out (scan [3]),
        .latch_enable_out(latch[3])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_3 (
        .clk_in          (clk  [3]),
        .data_in         (data [3]),
        .scan_select_in  (scan [3]),
        .latch_enable_in (latch[3]),
        .clk_out         (clk  [4]),
        .data_out        (data [4]),
        .scan_select_out (scan [4]),
        .latch_enable_out(latch[4])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_4 (
        .clk_in          (clk  [4]),
        .data_in         (data [4]),
        .scan_select_in  (scan [4]),
        .latch_enable_in (latch[4]),
        .clk_out         (clk  [5]),
        .data_out        (data [5]),
        .scan_select_out (scan [5]),
        .latch_enable_out(latch[5])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_5 (
        .clk_in          (clk  [5]),
        .data_in         (data [5]),
        .scan_select_in  (scan [5]),
        .latch_enable_in (latch[5]),
        .clk_out         (clk  [6]),
        .data_out        (data [6]),
        .scan_select_out (scan [6]),
        .latch_enable_out(latch[6])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_6 (
        .clk_in          (clk  [6]),
        .data_in         (data [6]),
        .scan_select_in  (scan [6]),
        .latch_enable_in (latch[6]),
        .clk_out         (clk  [7]),
        .data_out        (data [7]),
        .scan_select_out (scan [7]),
        .latch_enable_out(latch[7])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_7 (
        .clk_in          (clk  [7]),
        .data_in         (data [7]),
        .scan_select_in  (scan [7]),
        .latch_enable_in (latch[7]),
        .clk_out         (clk  [8]),
        .data_out        (data [8]),
        .scan_select_out (scan [8]),
        .latch_enable_out(latch[8])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_8 (
        .clk_in          (clk  [8]),
        .data_in         (data [8]),
        .scan_select_in  (scan [8]),
        .latch_enable_in (latch[8]),
        .clk_out         (clk  [9]),
        .data_out        (data [9]),
        .scan_select_out (scan [9]),
        .latch_enable_out(latch[9])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_9 (
        .clk_in          (clk  [9]),
        .data_in         (data [9]),
        .scan_select_in  (scan [9]),
        .latch_enable_in (latch[9]),
        .clk_out         (clk  [10]),
        .data_out        (data [10]),
        .scan_select_out (scan [10]),
        .latch_enable_out(latch[10])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_10 (
        .clk_in          (clk  [10]),
        .data_in         (data [10]),
        .scan_select_in  (scan [10]),
        .latch_enable_in (latch[10]),
        .clk_out         (clk  [11]),
        .data_out        (data [11]),
        .scan_select_out (scan [11]),
        .latch_enable_out(latch[11])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_11 (
        .clk_in          (clk  [11]),
        .data_in         (data [11]),
        .scan_select_in  (scan [11]),
        .latch_enable_in (latch[11]),
        .clk_out         (clk  [12]),
        .data_out        (data [12]),
        .scan_select_out (scan [12]),
        .latch_enable_out(latch[12])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_12 (
        .clk_in          (clk  [12]),
        .data_in         (data [12]),
        .scan_select_in  (scan [12]),
        .latch_enable_in (latch[12]),
        .clk_out         (clk  [13]),
        .data_out        (data [13]),
        .scan_select_out (scan [13]),
        .latch_enable_out(latch[13])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_13 (
        .clk_in          (clk  [13]),
        .data_in         (data [13]),
        .scan_select_in  (scan [13]),
        .latch_enable_in (latch[13]),
        .clk_out         (clk  [14]),
        .data_out        (data [14]),
        .scan_select_out (scan [14]),
        .latch_enable_out(latch[14])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_14 (
        .clk_in          (clk  [14]),
        .data_in         (data [14]),
        .scan_select_in  (scan [14]),
        .latch_enable_in (latch[14]),
        .clk_out         (clk  [15]),
        .data_out        (data [15]),
        .scan_select_out (scan [15]),
        .latch_enable_out(latch[15])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_15 (
        .clk_in          (clk  [15]),
        .data_in         (data [15]),
        .scan_select_in  (scan [15]),
        .latch_enable_in (latch[15]),
        .clk_out         (clk  [16]),
        .data_out        (data [16]),
        .scan_select_out (scan [16]),
        .latch_enable_out(latch[16])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_16 (
        .clk_in          (clk  [16]),
        .data_in         (data [16]),
        .scan_select_in  (scan [16]),
        .latch_enable_in (latch[16]),
        .clk_out         (clk  [17]),
        .data_out        (data [17]),
        .scan_select_out (scan [17]),
        .latch_enable_out(latch[17])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_17 (
        .clk_in          (clk  [17]),
        .data_in         (data [17]),
        .scan_select_in  (scan [17]),
        .latch_enable_in (latch[17]),
        .clk_out         (clk  [18]),
        .data_out        (data [18]),
        .scan_select_out (scan [18]),
        .latch_enable_out(latch[18])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_18 (
        .clk_in          (clk  [18]),
        .data_in         (data [18]),
        .scan_select_in  (scan [18]),
        .latch_enable_in (latch[18]),
        .clk_out         (clk  [19]),
        .data_out        (data [19]),
        .scan_select_out (scan [19]),
        .latch_enable_out(latch[19])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_19 (
        .clk_in          (clk  [19]),
        .data_in         (data [19]),
        .scan_select_in  (scan [19]),
        .latch_enable_in (latch[19]),
        .clk_out         (clk  [20]),
        .data_out        (data [20]),
        .scan_select_out (scan [20]),
        .latch_enable_out(latch[20])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_20 (
        .clk_in          (clk  [20]),
        .data_in         (data [20]),
        .scan_select_in  (scan [20]),
        .latch_enable_in (latch[20]),
        .clk_out         (clk  [21]),
        .data_out        (data [21]),
        .scan_select_out (scan [21]),
        .latch_enable_out(latch[21])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_21 (
        .clk_in          (clk  [21]),
        .data_in         (data [21]),
        .scan_select_in  (scan [21]),
        .latch_enable_in (latch[21]),
        .clk_out         (clk  [22]),
        .data_out        (data [22]),
        .scan_select_out (scan [22]),
        .latch_enable_out(latch[22])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_22 (
        .clk_in          (clk  [22]),
        .data_in         (data [22]),
        .scan_select_in  (scan [22]),
        .latch_enable_in (latch[22]),
        .clk_out         (clk  [23]),
        .data_out        (data [23]),
        .scan_select_out (scan [23]),
        .latch_enable_out(latch[23])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_23 (
        .clk_in          (clk  [23]),
        .data_in         (data [23]),
        .scan_select_in  (scan [23]),
        .latch_enable_in (latch[23]),
        .clk_out         (clk  [24]),
        .data_out        (data [24]),
        .scan_select_out (scan [24]),
        .latch_enable_out(latch[24])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_24 (
        .clk_in          (clk  [24]),
        .data_in         (data [24]),
        .scan_select_in  (scan [24]),
        .latch_enable_in (latch[24]),
        .clk_out         (clk  [25]),
        .data_out        (data [25]),
        .scan_select_out (scan [25]),
        .latch_enable_out(latch[25])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_25 (
        .clk_in          (clk  [25]),
        .data_in         (data [25]),
        .scan_select_in  (scan [25]),
        .latch_enable_in (latch[25]),
        .clk_out         (clk  [26]),
        .data_out        (data [26]),
        .scan_select_out (scan [26]),
        .latch_enable_out(latch[26])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_26 (
        .clk_in          (clk  [26]),
        .data_in         (data [26]),
        .scan_select_in  (scan [26]),
        .latch_enable_in (latch[26]),
        .clk_out         (clk  [27]),
        .data_out        (data [27]),
        .scan_select_out (scan [27]),
        .latch_enable_out(latch[27])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_27 (
        .clk_in          (clk  [27]),
        .data_in         (data [27]),
        .scan_select_in  (scan [27]),
        .latch_enable_in (latch[27]),
        .clk_out         (clk  [28]),
        .data_out        (data [28]),
        .scan_select_out (scan [28]),
        .latch_enable_out(latch[28])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_28 (
        .clk_in          (clk  [28]),
        .data_in         (data [28]),
        .scan_select_in  (scan [28]),
        .latch_enable_in (latch[28]),
        .clk_out         (clk  [29]),
        .data_out        (data [29]),
        .scan_select_out (scan [29]),
        .latch_enable_out(latch[29])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_29 (
        .clk_in          (clk  [29]),
        .data_in         (data [29]),
        .scan_select_in  (scan [29]),
        .latch_enable_in (latch[29]),
        .clk_out         (clk  [30]),
        .data_out        (data [30]),
        .scan_select_out (scan [30]),
        .latch_enable_out(latch[30])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_30 (
        .clk_in          (clk  [30]),
        .data_in         (data [30]),
        .scan_select_in  (scan [30]),
        .latch_enable_in (latch[30]),
        .clk_out         (clk  [31]),
        .data_out        (data [31]),
        .scan_select_out (scan [31]),
        .latch_enable_out(latch[31])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_31 (
        .clk_in          (clk  [31]),
        .data_in         (data [31]),
        .scan_select_in  (scan [31]),
        .latch_enable_in (latch[31]),
        .clk_out         (clk  [32]),
        .data_out        (data [32]),
        .scan_select_out (scan [32]),
        .latch_enable_out(latch[32])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_32 (
        .clk_in          (clk  [32]),
        .data_in         (data [32]),
        .scan_select_in  (scan [32]),
        .latch_enable_in (latch[32]),
        .clk_out         (clk  [33]),
        .data_out        (data [33]),
        .scan_select_out (scan [33]),
        .latch_enable_out(latch[33])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_33 (
        .clk_in          (clk  [33]),
        .data_in         (data [33]),
        .scan_select_in  (scan [33]),
        .latch_enable_in (latch[33]),
        .clk_out         (clk  [34]),
        .data_out        (data [34]),
        .scan_select_out (scan [34]),
        .latch_enable_out(latch[34])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_34 (
        .clk_in          (clk  [34]),
        .data_in         (data [34]),
        .scan_select_in  (scan [34]),
        .latch_enable_in (latch[34]),
        .clk_out         (clk  [35]),
        .data_out        (data [35]),
        .scan_select_out (scan [35]),
        .latch_enable_out(latch[35])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_35 (
        .clk_in          (clk  [35]),
        .data_in         (data [35]),
        .scan_select_in  (scan [35]),
        .latch_enable_in (latch[35]),
        .clk_out         (clk  [36]),
        .data_out        (data [36]),
        .scan_select_out (scan [36]),
        .latch_enable_out(latch[36])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_36 (
        .clk_in          (clk  [36]),
        .data_in         (data [36]),
        .scan_select_in  (scan [36]),
        .latch_enable_in (latch[36]),
        .clk_out         (clk  [37]),
        .data_out        (data [37]),
        .scan_select_out (scan [37]),
        .latch_enable_out(latch[37])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_37 (
        .clk_in          (clk  [37]),
        .data_in         (data [37]),
        .scan_select_in  (scan [37]),
        .latch_enable_in (latch[37]),
        .clk_out         (clk  [38]),
        .data_out        (data [38]),
        .scan_select_out (scan [38]),
        .latch_enable_out(latch[38])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_38 (
        .clk_in          (clk  [38]),
        .data_in         (data [38]),
        .scan_select_in  (scan [38]),
        .latch_enable_in (latch[38]),
        .clk_out         (clk  [39]),
        .data_out        (data [39]),
        .scan_select_out (scan [39]),
        .latch_enable_out(latch[39])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_39 (
        .clk_in          (clk  [39]),
        .data_in         (data [39]),
        .scan_select_in  (scan [39]),
        .latch_enable_in (latch[39]),
        .clk_out         (clk  [40]),
        .data_out        (data [40]),
        .scan_select_out (scan [40]),
        .latch_enable_out(latch[40])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_40 (
        .clk_in          (clk  [40]),
        .data_in         (data [40]),
        .scan_select_in  (scan [40]),
        .latch_enable_in (latch[40]),
        .clk_out         (clk  [41]),
        .data_out        (data [41]),
        .scan_select_out (scan [41]),
        .latch_enable_out(latch[41])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_41 (
        .clk_in          (clk  [41]),
        .data_in         (data [41]),
        .scan_select_in  (scan [41]),
        .latch_enable_in (latch[41]),
        .clk_out         (clk  [42]),
        .data_out        (data [42]),
        .scan_select_out (scan [42]),
        .latch_enable_out(latch[42])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_42 (
        .clk_in          (clk  [42]),
        .data_in         (data [42]),
        .scan_select_in  (scan [42]),
        .latch_enable_in (latch[42]),
        .clk_out         (clk  [43]),
        .data_out        (data [43]),
        .scan_select_out (scan [43]),
        .latch_enable_out(latch[43])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_43 (
        .clk_in          (clk  [43]),
        .data_in         (data [43]),
        .scan_select_in  (scan [43]),
        .latch_enable_in (latch[43]),
        .clk_out         (clk  [44]),
        .data_out        (data [44]),
        .scan_select_out (scan [44]),
        .latch_enable_out(latch[44])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_44 (
        .clk_in          (clk  [44]),
        .data_in         (data [44]),
        .scan_select_in  (scan [44]),
        .latch_enable_in (latch[44]),
        .clk_out         (clk  [45]),
        .data_out        (data [45]),
        .scan_select_out (scan [45]),
        .latch_enable_out(latch[45])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_45 (
        .clk_in          (clk  [45]),
        .data_in         (data [45]),
        .scan_select_in  (scan [45]),
        .latch_enable_in (latch[45]),
        .clk_out         (clk  [46]),
        .data_out        (data [46]),
        .scan_select_out (scan [46]),
        .latch_enable_out(latch[46])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_46 (
        .clk_in          (clk  [46]),
        .data_in         (data [46]),
        .scan_select_in  (scan [46]),
        .latch_enable_in (latch[46]),
        .clk_out         (clk  [47]),
        .data_out        (data [47]),
        .scan_select_out (scan [47]),
        .latch_enable_out(latch[47])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_47 (
        .clk_in          (clk  [47]),
        .data_in         (data [47]),
        .scan_select_in  (scan [47]),
        .latch_enable_in (latch[47]),
        .clk_out         (clk  [48]),
        .data_out        (data [48]),
        .scan_select_out (scan [48]),
        .latch_enable_out(latch[48])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_48 (
        .clk_in          (clk  [48]),
        .data_in         (data [48]),
        .scan_select_in  (scan [48]),
        .latch_enable_in (latch[48]),
        .clk_out         (clk  [49]),
        .data_out        (data [49]),
        .scan_select_out (scan [49]),
        .latch_enable_out(latch[49])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_49 (
        .clk_in          (clk  [49]),
        .data_in         (data [49]),
        .scan_select_in  (scan [49]),
        .latch_enable_in (latch[49]),
        .clk_out         (clk  [50]),
        .data_out        (data [50]),
        .scan_select_out (scan [50]),
        .latch_enable_out(latch[50])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_50 (
        .clk_in          (clk  [50]),
        .data_in         (data [50]),
        .scan_select_in  (scan [50]),
        .latch_enable_in (latch[50]),
        .clk_out         (clk  [51]),
        .data_out        (data [51]),
        .scan_select_out (scan [51]),
        .latch_enable_out(latch[51])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_51 (
        .clk_in          (clk  [51]),
        .data_in         (data [51]),
        .scan_select_in  (scan [51]),
        .latch_enable_in (latch[51]),
        .clk_out         (clk  [52]),
        .data_out        (data [52]),
        .scan_select_out (scan [52]),
        .latch_enable_out(latch[52])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_52 (
        .clk_in          (clk  [52]),
        .data_in         (data [52]),
        .scan_select_in  (scan [52]),
        .latch_enable_in (latch[52]),
        .clk_out         (clk  [53]),
        .data_out        (data [53]),
        .scan_select_out (scan [53]),
        .latch_enable_out(latch[53])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_53 (
        .clk_in          (clk  [53]),
        .data_in         (data [53]),
        .scan_select_in  (scan [53]),
        .latch_enable_in (latch[53]),
        .clk_out         (clk  [54]),
        .data_out        (data [54]),
        .scan_select_out (scan [54]),
        .latch_enable_out(latch[54])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_54 (
        .clk_in          (clk  [54]),
        .data_in         (data [54]),
        .scan_select_in  (scan [54]),
        .latch_enable_in (latch[54]),
        .clk_out         (clk  [55]),
        .data_out        (data [55]),
        .scan_select_out (scan [55]),
        .latch_enable_out(latch[55])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_55 (
        .clk_in          (clk  [55]),
        .data_in         (data [55]),
        .scan_select_in  (scan [55]),
        .latch_enable_in (latch[55]),
        .clk_out         (clk  [56]),
        .data_out        (data [56]),
        .scan_select_out (scan [56]),
        .latch_enable_out(latch[56])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_56 (
        .clk_in          (clk  [56]),
        .data_in         (data [56]),
        .scan_select_in  (scan [56]),
        .latch_enable_in (latch[56]),
        .clk_out         (clk  [57]),
        .data_out        (data [57]),
        .scan_select_out (scan [57]),
        .latch_enable_out(latch[57])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_57 (
        .clk_in          (clk  [57]),
        .data_in         (data [57]),
        .scan_select_in  (scan [57]),
        .latch_enable_in (latch[57]),
        .clk_out         (clk  [58]),
        .data_out        (data [58]),
        .scan_select_out (scan [58]),
        .latch_enable_out(latch[58])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_58 (
        .clk_in          (clk  [58]),
        .data_in         (data [58]),
        .scan_select_in  (scan [58]),
        .latch_enable_in (latch[58]),
        .clk_out         (clk  [59]),
        .data_out        (data [59]),
        .scan_select_out (scan [59]),
        .latch_enable_out(latch[59])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_59 (
        .clk_in          (clk  [59]),
        .data_in         (data [59]),
        .scan_select_in  (scan [59]),
        .latch_enable_in (latch[59]),
        .clk_out         (clk  [60]),
        .data_out        (data [60]),
        .scan_select_out (scan [60]),
        .latch_enable_out(latch[60])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_60 (
        .clk_in          (clk  [60]),
        .data_in         (data [60]),
        .scan_select_in  (scan [60]),
        .latch_enable_in (latch[60]),
        .clk_out         (clk  [61]),
        .data_out        (data [61]),
        .scan_select_out (scan [61]),
        .latch_enable_out(latch[61])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_61 (
        .clk_in          (clk  [61]),
        .data_in         (data [61]),
        .scan_select_in  (scan [61]),
        .latch_enable_in (latch[61]),
        .clk_out         (clk  [62]),
        .data_out        (data [62]),
        .scan_select_out (scan [62]),
        .latch_enable_out(latch[62])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_62 (
        .clk_in          (clk  [62]),
        .data_in         (data [62]),
        .scan_select_in  (scan [62]),
        .latch_enable_in (latch[62]),
        .clk_out         (clk  [63]),
        .data_out        (data [63]),
        .scan_select_out (scan [63]),
        .latch_enable_out(latch[63])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_63 (
        .clk_in          (clk  [63]),
        .data_in         (data [63]),
        .scan_select_in  (scan [63]),
        .latch_enable_in (latch[63]),
        .clk_out         (clk  [64]),
        .data_out        (data [64]),
        .scan_select_out (scan [64]),
        .latch_enable_out(latch[64])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_64 (
        .clk_in          (clk  [64]),
        .data_in         (data [64]),
        .scan_select_in  (scan [64]),
        .latch_enable_in (latch[64]),
        .clk_out         (clk  [65]),
        .data_out        (data [65]),
        .scan_select_out (scan [65]),
        .latch_enable_out(latch[65])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_65 (
        .clk_in          (clk  [65]),
        .data_in         (data [65]),
        .scan_select_in  (scan [65]),
        .latch_enable_in (latch[65]),
        .clk_out         (clk  [66]),
        .data_out        (data [66]),
        .scan_select_out (scan [66]),
        .latch_enable_out(latch[66])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_66 (
        .clk_in          (clk  [66]),
        .data_in         (data [66]),
        .scan_select_in  (scan [66]),
        .latch_enable_in (latch[66]),
        .clk_out         (clk  [67]),
        .data_out        (data [67]),
        .scan_select_out (scan [67]),
        .latch_enable_out(latch[67])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_67 (
        .clk_in          (clk  [67]),
        .data_in         (data [67]),
        .scan_select_in  (scan [67]),
        .latch_enable_in (latch[67]),
        .clk_out         (clk  [68]),
        .data_out        (data [68]),
        .scan_select_out (scan [68]),
        .latch_enable_out(latch[68])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_68 (
        .clk_in          (clk  [68]),
        .data_in         (data [68]),
        .scan_select_in  (scan [68]),
        .latch_enable_in (latch[68]),
        .clk_out         (clk  [69]),
        .data_out        (data [69]),
        .scan_select_out (scan [69]),
        .latch_enable_out(latch[69])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_69 (
        .clk_in          (clk  [69]),
        .data_in         (data [69]),
        .scan_select_in  (scan [69]),
        .latch_enable_in (latch[69]),
        .clk_out         (clk  [70]),
        .data_out        (data [70]),
        .scan_select_out (scan [70]),
        .latch_enable_out(latch[70])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_70 (
        .clk_in          (clk  [70]),
        .data_in         (data [70]),
        .scan_select_in  (scan [70]),
        .latch_enable_in (latch[70]),
        .clk_out         (clk  [71]),
        .data_out        (data [71]),
        .scan_select_out (scan [71]),
        .latch_enable_out(latch[71])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_71 (
        .clk_in          (clk  [71]),
        .data_in         (data [71]),
        .scan_select_in  (scan [71]),
        .latch_enable_in (latch[71]),
        .clk_out         (clk  [72]),
        .data_out        (data [72]),
        .scan_select_out (scan [72]),
        .latch_enable_out(latch[72])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_72 (
        .clk_in          (clk  [72]),
        .data_in         (data [72]),
        .scan_select_in  (scan [72]),
        .latch_enable_in (latch[72]),
        .clk_out         (clk  [73]),
        .data_out        (data [73]),
        .scan_select_out (scan [73]),
        .latch_enable_out(latch[73])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_73 (
        .clk_in          (clk  [73]),
        .data_in         (data [73]),
        .scan_select_in  (scan [73]),
        .latch_enable_in (latch[73]),
        .clk_out         (clk  [74]),
        .data_out        (data [74]),
        .scan_select_out (scan [74]),
        .latch_enable_out(latch[74])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_74 (
        .clk_in          (clk  [74]),
        .data_in         (data [74]),
        .scan_select_in  (scan [74]),
        .latch_enable_in (latch[74]),
        .clk_out         (clk  [75]),
        .data_out        (data [75]),
        .scan_select_out (scan [75]),
        .latch_enable_out(latch[75])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_75 (
        .clk_in          (clk  [75]),
        .data_in         (data [75]),
        .scan_select_in  (scan [75]),
        .latch_enable_in (latch[75]),
        .clk_out         (clk  [76]),
        .data_out        (data [76]),
        .scan_select_out (scan [76]),
        .latch_enable_out(latch[76])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_76 (
        .clk_in          (clk  [76]),
        .data_in         (data [76]),
        .scan_select_in  (scan [76]),
        .latch_enable_in (latch[76]),
        .clk_out         (clk  [77]),
        .data_out        (data [77]),
        .scan_select_out (scan [77]),
        .latch_enable_out(latch[77])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_77 (
        .clk_in          (clk  [77]),
        .data_in         (data [77]),
        .scan_select_in  (scan [77]),
        .latch_enable_in (latch[77]),
        .clk_out         (clk  [78]),
        .data_out        (data [78]),
        .scan_select_out (scan [78]),
        .latch_enable_out(latch[78])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_78 (
        .clk_in          (clk  [78]),
        .data_in         (data [78]),
        .scan_select_in  (scan [78]),
        .latch_enable_in (latch[78]),
        .clk_out         (clk  [79]),
        .data_out        (data [79]),
        .scan_select_out (scan [79]),
        .latch_enable_out(latch[79])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_79 (
        .clk_in          (clk  [79]),
        .data_in         (data [79]),
        .scan_select_in  (scan [79]),
        .latch_enable_in (latch[79]),
        .clk_out         (clk  [80]),
        .data_out        (data [80]),
        .scan_select_out (scan [80]),
        .latch_enable_out(latch[80])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_80 (
        .clk_in          (clk  [80]),
        .data_in         (data [80]),
        .scan_select_in  (scan [80]),
        .latch_enable_in (latch[80]),
        .clk_out         (clk  [81]),
        .data_out        (data [81]),
        .scan_select_out (scan [81]),
        .latch_enable_out(latch[81])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_81 (
        .clk_in          (clk  [81]),
        .data_in         (data [81]),
        .scan_select_in  (scan [81]),
        .latch_enable_in (latch[81]),
        .clk_out         (clk  [82]),
        .data_out        (data [82]),
        .scan_select_out (scan [82]),
        .latch_enable_out(latch[82])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_82 (
        .clk_in          (clk  [82]),
        .data_in         (data [82]),
        .scan_select_in  (scan [82]),
        .latch_enable_in (latch[82]),
        .clk_out         (clk  [83]),
        .data_out        (data [83]),
        .scan_select_out (scan [83]),
        .latch_enable_out(latch[83])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_83 (
        .clk_in          (clk  [83]),
        .data_in         (data [83]),
        .scan_select_in  (scan [83]),
        .latch_enable_in (latch[83]),
        .clk_out         (clk  [84]),
        .data_out        (data [84]),
        .scan_select_out (scan [84]),
        .latch_enable_out(latch[84])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_84 (
        .clk_in          (clk  [84]),
        .data_in         (data [84]),
        .scan_select_in  (scan [84]),
        .latch_enable_in (latch[84]),
        .clk_out         (clk  [85]),
        .data_out        (data [85]),
        .scan_select_out (scan [85]),
        .latch_enable_out(latch[85])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_85 (
        .clk_in          (clk  [85]),
        .data_in         (data [85]),
        .scan_select_in  (scan [85]),
        .latch_enable_in (latch[85]),
        .clk_out         (clk  [86]),
        .data_out        (data [86]),
        .scan_select_out (scan [86]),
        .latch_enable_out(latch[86])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_86 (
        .clk_in          (clk  [86]),
        .data_in         (data [86]),
        .scan_select_in  (scan [86]),
        .latch_enable_in (latch[86]),
        .clk_out         (clk  [87]),
        .data_out        (data [87]),
        .scan_select_out (scan [87]),
        .latch_enable_out(latch[87])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_87 (
        .clk_in          (clk  [87]),
        .data_in         (data [87]),
        .scan_select_in  (scan [87]),
        .latch_enable_in (latch[87]),
        .clk_out         (clk  [88]),
        .data_out        (data [88]),
        .scan_select_out (scan [88]),
        .latch_enable_out(latch[88])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_88 (
        .clk_in          (clk  [88]),
        .data_in         (data [88]),
        .scan_select_in  (scan [88]),
        .latch_enable_in (latch[88]),
        .clk_out         (clk  [89]),
        .data_out        (data [89]),
        .scan_select_out (scan [89]),
        .latch_enable_out(latch[89])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_89 (
        .clk_in          (clk  [89]),
        .data_in         (data [89]),
        .scan_select_in  (scan [89]),
        .latch_enable_in (latch[89]),
        .clk_out         (clk  [90]),
        .data_out        (data [90]),
        .scan_select_out (scan [90]),
        .latch_enable_out(latch[90])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_90 (
        .clk_in          (clk  [90]),
        .data_in         (data [90]),
        .scan_select_in  (scan [90]),
        .latch_enable_in (latch[90]),
        .clk_out         (clk  [91]),
        .data_out        (data [91]),
        .scan_select_out (scan [91]),
        .latch_enable_out(latch[91])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_91 (
        .clk_in          (clk  [91]),
        .data_in         (data [91]),
        .scan_select_in  (scan [91]),
        .latch_enable_in (latch[91]),
        .clk_out         (clk  [92]),
        .data_out        (data [92]),
        .scan_select_out (scan [92]),
        .latch_enable_out(latch[92])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_92 (
        .clk_in          (clk  [92]),
        .data_in         (data [92]),
        .scan_select_in  (scan [92]),
        .latch_enable_in (latch[92]),
        .clk_out         (clk  [93]),
        .data_out        (data [93]),
        .scan_select_out (scan [93]),
        .latch_enable_out(latch[93])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_93 (
        .clk_in          (clk  [93]),
        .data_in         (data [93]),
        .scan_select_in  (scan [93]),
        .latch_enable_in (latch[93]),
        .clk_out         (clk  [94]),
        .data_out        (data [94]),
        .scan_select_out (scan [94]),
        .latch_enable_out(latch[94])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_94 (
        .clk_in          (clk  [94]),
        .data_in         (data [94]),
        .scan_select_in  (scan [94]),
        .latch_enable_in (latch[94]),
        .clk_out         (clk  [95]),
        .data_out        (data [95]),
        .scan_select_out (scan [95]),
        .latch_enable_out(latch[95])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_95 (
        .clk_in          (clk  [95]),
        .data_in         (data [95]),
        .scan_select_in  (scan [95]),
        .latch_enable_in (latch[95]),
        .clk_out         (clk  [96]),
        .data_out        (data [96]),
        .scan_select_out (scan [96]),
        .latch_enable_out(latch[96])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_96 (
        .clk_in          (clk  [96]),
        .data_in         (data [96]),
        .scan_select_in  (scan [96]),
        .latch_enable_in (latch[96]),
        .clk_out         (clk  [97]),
        .data_out        (data [97]),
        .scan_select_out (scan [97]),
        .latch_enable_out(latch[97])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_97 (
        .clk_in          (clk  [97]),
        .data_in         (data [97]),
        .scan_select_in  (scan [97]),
        .latch_enable_in (latch[97]),
        .clk_out         (clk  [98]),
        .data_out        (data [98]),
        .scan_select_out (scan [98]),
        .latch_enable_out(latch[98])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_98 (
        .clk_in          (clk  [98]),
        .data_in         (data [98]),
        .scan_select_in  (scan [98]),
        .latch_enable_in (latch[98]),
        .clk_out         (clk  [99]),
        .data_out        (data [99]),
        .scan_select_out (scan [99]),
        .latch_enable_out(latch[99])
        );
    
    scan_wrapper_lesson_1 #(.NUM_IOS(8)) instance_99 (
        .clk_in          (clk  [99]),
        .data_in         (data [99]),
        .scan_select_in  (scan [99]),
        .latch_enable_in (latch[99]),
        .clk_out         (clk  [100]),
        .data_out        (data [100]),
        .scan_select_out (scan [100]),
        .latch_enable_out(latch[100])
        );
        // end of module instantiation

endmodule	// user_project_wrapper
`default_nettype wire
