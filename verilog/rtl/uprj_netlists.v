// SPDX-FileCopyrightText: 
// 2020 Efabless Corporation
// 2021 Matt Venn
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

// Include caravel global defines for the number of the user project IO pads 
`include "defines.v"
`define USE_POWER_PINS

`include "user_project_wrapper.v"
//  0 Function generator             : /home/matt/work/asic-workshop/shuttle3-mpw-3/openlane/designs/wrapped_function_generator
`include "wrapped_function_generator/wrapper.v"
`include "wrapped_function_generator/function_generator/src/generator.v"
// shared Bridge                     : /home/matt/work/asic-workshop/shuttle3-mpw-3/openlane/designs/wb_bridge
// shared Wrapper                    : /home/matt/work/asic-workshop/shuttle3-mpw-3/openlane/designs/wb_openram_wrapper
// shared OpenRAM 1kybte             : /home/matt/work/asic-workshop/shuttle3-mpw-3/openlane/designs/openram_z2a
`include "wb_bridge/src/wb_bridge_2way.v"
`include "wb_openram_wrapper/src/wb_port_control.v"
`include "wb_openram_wrapper/src/wb_openram_wrapper.v"
`include "openram_z2a/src/sky130_sram_1kbyte_1rw1r_32x256_8.v"

