/*
 * SPDX-FileCopyrightText: 2020 Efabless Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * SPDX-License-Identifier: Apache-2.0
 */

#include <defs.h>
#include <stub.c>

void main()
{
	/* 
	IO Control Registers
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 3-bits | 1-bit | 1-bit | 1-bit  | 1-bit  | 1-bit | 1-bit   | 1-bit   | 1-bit | 1-bit | 1-bit   |

	Output: 0000_0110_0000_1110  (0x1808) = GPIO_MODE_USER_STD_OUTPUT
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 110    | 0     | 0     | 0      | 0      | 0     | 0       | 1       | 0     | 0     | 0       |
	
	 
	Input: 0000_0001_0000_1111 (0x0402) = GPIO_MODE_USER_STD_INPUT_NOPULL
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 001    | 0     | 0     | 0      | 0      | 0     | 0       | 0       | 0     | 1     | 0       |

	*/

    // 8 inputs
	reg_mprj_io_21 =   GPIO_MODE_USER_STD_INPUT_NOPULL;
	reg_mprj_io_22 =   GPIO_MODE_USER_STD_INPUT_NOPULL;
	reg_mprj_io_23 =   GPIO_MODE_USER_STD_INPUT_NOPULL;
	reg_mprj_io_24 =   GPIO_MODE_USER_STD_INPUT_NOPULL;
	reg_mprj_io_25 =   GPIO_MODE_USER_STD_INPUT_NOPULL;
	reg_mprj_io_26 =   GPIO_MODE_USER_STD_INPUT_NOPULL;
	reg_mprj_io_27 =   GPIO_MODE_USER_STD_INPUT_NOPULL;
	reg_mprj_io_28 =   GPIO_MODE_USER_STD_INPUT_NOPULL;

    // 8 outputs
	reg_mprj_io_29 =  GPIO_MODE_USER_STD_OUTPUT;
	reg_mprj_io_30 =  GPIO_MODE_USER_STD_OUTPUT;
	reg_mprj_io_31 =  GPIO_MODE_USER_STD_OUTPUT;
	reg_mprj_io_32 =  GPIO_MODE_USER_STD_OUTPUT;
	reg_mprj_io_33 =  GPIO_MODE_USER_STD_OUTPUT;
	reg_mprj_io_34 =  GPIO_MODE_USER_STD_OUTPUT;
	reg_mprj_io_35 =  GPIO_MODE_USER_STD_OUTPUT;
	reg_mprj_io_36 =  GPIO_MODE_USER_STD_OUTPUT;

    // ready output
	reg_mprj_io_37 =  GPIO_MODE_USER_STD_OUTPUT;

    /* Apply configuration */
    reg_mprj_xfer = 1;
    while (reg_mprj_xfer == 1);
}
