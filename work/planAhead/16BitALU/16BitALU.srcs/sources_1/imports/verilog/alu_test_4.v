/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_test_4 (
    input clk,
    input rst,
    input next_state,
    input [15:0] switches,
    input [5:0] alufn,
    input togglestates,
    output reg [15:0] indicator,
    output reg [1:0] statecheck
  );
  
  
  
  wire [16-1:0] M_alu_alu;
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  reg [6-1:0] M_alu_alufn;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  alu_6 alu (
    .alufn(M_alu_alufn),
    .a(M_alu_a),
    .b(M_alu_b),
    .alu(M_alu_alu),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n)
  );
  
  reg [26:0] M_clock_d, M_clock_q = 1'h0;
  reg [15:0] M_autoinputa_d, M_autoinputa_q = 1'h0;
  reg [15:0] M_autoinputb_d, M_autoinputb_q = 1'h0;
  localparam IDLE_tester = 2'd0;
  localparam INPUTAVAL_tester = 2'd1;
  localparam INPUTBVAL_tester = 2'd2;
  localparam RESULT_tester = 2'd3;
  
  reg [1:0] M_tester_d, M_tester_q = IDLE_tester;
  localparam ADD1_testcasecycle = 6'd0;
  localparam ADD2_testcasecycle = 6'd1;
  localparam ADD3_testcasecycle = 6'd2;
  localparam ADD4_testcasecycle = 6'd3;
  localparam ADD5_testcasecycle = 6'd4;
  localparam SUB1_testcasecycle = 6'd5;
  localparam SUB2_testcasecycle = 6'd6;
  localparam SUB3_testcasecycle = 6'd7;
  localparam SUB4_testcasecycle = 6'd8;
  localparam SUB5_testcasecycle = 6'd9;
  localparam SUB6_testcasecycle = 6'd10;
  localparam MUL1_testcasecycle = 6'd11;
  localparam MUL2_testcasecycle = 6'd12;
  localparam MUL3_testcasecycle = 6'd13;
  localparam MUL4_testcasecycle = 6'd14;
  localparam MUL5_testcasecycle = 6'd15;
  localparam MUL6_testcasecycle = 6'd16;
  localparam MUL7_testcasecycle = 6'd17;
  localparam MUL8_testcasecycle = 6'd18;
  localparam AND_testcasecycle = 6'd19;
  localparam OR_testcasecycle = 6'd20;
  localparam XOR_testcasecycle = 6'd21;
  localparam A_testcasecycle = 6'd22;
  localparam SHL_testcasecycle = 6'd23;
  localparam SHR_testcasecycle = 6'd24;
  localparam SRA1_testcasecycle = 6'd25;
  localparam SRA2_testcasecycle = 6'd26;
  localparam RL_testcasecycle = 6'd27;
  localparam RR_testcasecycle = 6'd28;
  localparam CMPEQ1_testcasecycle = 6'd29;
  localparam CMPEQ2_testcasecycle = 6'd30;
  localparam CMPEQ3_testcasecycle = 6'd31;
  localparam CMPLT1_testcasecycle = 6'd32;
  localparam CMPLT2_testcasecycle = 6'd33;
  localparam CMPLT3_testcasecycle = 6'd34;
  localparam CMPLE1_testcasecycle = 6'd35;
  localparam CMPLE2_testcasecycle = 6'd36;
  localparam CMPLE3_testcasecycle = 6'd37;
  localparam DONE_testcasecycle = 6'd38;
  localparam ERRORADDER_testcasecycle = 6'd39;
  localparam ERRORMULT_testcasecycle = 6'd40;
  localparam ERRORBOOL_testcasecycle = 6'd41;
  localparam ERRORSHIFT_testcasecycle = 6'd42;
  localparam ERRORROT_testcasecycle = 6'd43;
  localparam ERRORCOMP_testcasecycle = 6'd44;
  
  reg [5:0] M_testcasecycle_d, M_testcasecycle_q = ADD1_testcasecycle;
  
  always @* begin
    M_tester_d = M_tester_q;
    M_testcasecycle_d = M_testcasecycle_q;
    M_autoinputb_d = M_autoinputb_q;
    M_autoinputa_d = M_autoinputa_q;
    M_clock_d = M_clock_q;
    
    M_alu_a = 1'h0;
    M_alu_b = 1'h0;
    M_alu_alufn = 1'h0;
    indicator = 1'h0;
    statecheck = 1'h0;
    M_clock_d = M_clock_q + 1'h1;
    if (togglestates) begin
      
      case (M_clock_q[25+1-:2])
        2'h0: begin
          indicator = M_autoinputa_q;
        end
        2'h1: begin
          indicator = M_autoinputb_q;
        end
        default: begin
          indicator = M_alu_alu;
        end
      endcase
      
      case (M_testcasecycle_q)
        ADD1_testcasecycle: begin
          M_alu_alufn = 6'h00;
          M_autoinputa_d = 16'h1212;
          M_autoinputb_d = 16'h6033;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h7245) begin
              M_clock_d = 26'h0000000;
              M_testcasecycle_d = ADD2_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        ADD2_testcasecycle: begin
          M_alu_alufn = 6'h00;
          M_autoinputa_d = 16'hffff;
          M_autoinputb_d = 16'hffff;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'hfffe) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = ADD3_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        ADD3_testcasecycle: begin
          M_alu_alufn = 6'h00;
          M_autoinputa_d = 16'h0002;
          M_autoinputb_d = 16'hffff;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0001) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = ADD4_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        ADD4_testcasecycle: begin
          M_alu_alufn = 6'h00;
          M_autoinputa_d = 16'h9999;
          M_autoinputb_d = 16'h1111;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'haaaa) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = ADD5_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        ADD5_testcasecycle: begin
          M_alu_alufn = 6'h00;
          M_autoinputa_d = 16'hefa7;
          M_autoinputb_d = 16'habb3;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h9b5a) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = SUB1_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        SUB1_testcasecycle: begin
          M_alu_alufn = 6'h01;
          M_autoinputa_d = 16'h4444;
          M_autoinputb_d = 16'h1111;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h3333) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = SUB2_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        SUB2_testcasecycle: begin
          M_alu_alufn = 6'h01;
          M_autoinputa_d = 16'h0123;
          M_autoinputb_d = 16'h1111;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'hf012) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = SUB3_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        SUB3_testcasecycle: begin
          M_alu_alufn = 6'h01;
          M_autoinputa_d = 16'hbeea;
          M_autoinputb_d = 16'habbf;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h132b) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = SUB4_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        SUB4_testcasecycle: begin
          M_alu_alufn = 6'h01;
          M_autoinputa_d = 16'hffac;
          M_autoinputb_d = 16'h4056;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'hbf56) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = SUB5_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        SUB5_testcasecycle: begin
          M_alu_alufn = 6'h01;
          M_autoinputa_d = 16'h5c0f;
          M_autoinputb_d = 16'hab72;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'hb09d) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = SUB6_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        SUB6_testcasecycle: begin
          M_alu_alufn = 6'h01;
          M_autoinputa_d = 16'h9858;
          M_autoinputb_d = 16'h8ad0;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0d88) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = MUL1_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORADDER_testcasecycle;
            end
          end
        end
        ERRORADDER_testcasecycle: begin
          indicator = 16'hffff;
          M_testcasecycle_d = ERRORADDER_testcasecycle;
        end
        MUL1_testcasecycle: begin
          M_alu_alufn = 6'h02;
          M_autoinputa_d = 16'h0002;
          M_autoinputb_d = 16'h2a1b;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h5436) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = MUL2_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORMULT_testcasecycle;
            end
          end
        end
        MUL2_testcasecycle: begin
          M_alu_alufn = 6'h02;
          M_autoinputa_d = 16'h2700;
          M_autoinputb_d = 16'h5612;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'hbe00) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = MUL3_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORMULT_testcasecycle;
            end
          end
        end
        MUL3_testcasecycle: begin
          M_alu_alufn = 6'h02;
          M_autoinputa_d = 16'h0002;
          M_autoinputb_d = 16'hffff;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'hfffe) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = MUL4_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORMULT_testcasecycle;
            end
          end
        end
        MUL4_testcasecycle: begin
          M_alu_alufn = 6'h02;
          M_autoinputa_d = 16'h0013;
          M_autoinputb_d = 16'h9abe;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h7c1a) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = MUL5_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORMULT_testcasecycle;
            end
          end
        end
        MUL5_testcasecycle: begin
          M_alu_alufn = 6'h02;
          M_autoinputa_d = 16'hffff;
          M_autoinputb_d = 16'hffee;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0012) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = MUL6_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORMULT_testcasecycle;
            end
          end
        end
        MUL6_testcasecycle: begin
          M_alu_alufn = 6'h02;
          M_autoinputa_d = 16'hab2a;
          M_autoinputb_d = 16'hbc12;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'he0f4) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = AND_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORMULT_testcasecycle;
            end
          end
        end
        ERRORMULT_testcasecycle: begin
          indicator = 16'hfffe;
          M_testcasecycle_d = ERRORMULT_testcasecycle;
        end
        AND_testcasecycle: begin
          M_alu_alufn = 6'h18;
          M_autoinputa_d = 16'h00ff;
          M_autoinputb_d = 16'h5555;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0055) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = OR_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORBOOL_testcasecycle;
            end
          end
        end
        OR_testcasecycle: begin
          M_alu_alufn = 6'h1e;
          M_autoinputa_d = 16'h00ff;
          M_autoinputb_d = 16'h5555;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h55ff) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = XOR_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORBOOL_testcasecycle;
            end
          end
        end
        XOR_testcasecycle: begin
          M_alu_alufn = 6'h16;
          M_autoinputa_d = 16'h00ff;
          M_autoinputb_d = 16'h5555;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h55aa) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = A_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORBOOL_testcasecycle;
            end
          end
        end
        A_testcasecycle: begin
          M_alu_alufn = 6'h1a;
          M_autoinputa_d = 16'h00ff;
          M_autoinputb_d = 16'h5555;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h00ff) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = SHL_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORBOOL_testcasecycle;
            end
          end
        end
        ERRORBOOL_testcasecycle: begin
          indicator = 16'hfffd;
          M_testcasecycle_d = ERRORBOOL_testcasecycle;
        end
        SHL_testcasecycle: begin
          M_alu_alufn = 6'h20;
          M_autoinputa_d = 16'h4433;
          M_autoinputb_d = 16'h0002;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h10cc) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = SHR_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORSHIFT_testcasecycle;
            end
          end
        end
        SHR_testcasecycle: begin
          M_alu_alufn = 6'h21;
          M_autoinputa_d = 16'h4433;
          M_autoinputb_d = 16'h0002;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h110c) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = SRA1_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORSHIFT_testcasecycle;
            end
          end
        end
        SRA1_testcasecycle: begin
          M_alu_alufn = 6'h23;
          M_autoinputa_d = 16'ha000;
          M_autoinputb_d = 16'h0002;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'he800) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = SRA2_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORSHIFT_testcasecycle;
            end
          end
        end
        SRA2_testcasecycle: begin
          M_alu_alufn = 6'h23;
          M_autoinputa_d = 16'h2000;
          M_autoinputb_d = 16'h0002;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0800) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = RL_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORSHIFT_testcasecycle;
            end
          end
        end
        ERRORSHIFT_testcasecycle: begin
          indicator = 16'hfffb;
          M_testcasecycle_d = ERRORSHIFT_testcasecycle;
        end
        RL_testcasecycle: begin
          M_alu_alufn = 6'h24;
          M_autoinputa_d = 16'h4af8;
          M_autoinputb_d = 16'h0003;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h57c2) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = RR_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORROT_testcasecycle;
            end
          end
        end
        RR_testcasecycle: begin
          M_alu_alufn = 6'h25;
          M_autoinputa_d = 16'h1aa7;
          M_autoinputb_d = 16'h0003;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'he354) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = CMPEQ1_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORROT_testcasecycle;
            end
          end
        end
        ERRORROT_testcasecycle: begin
          indicator = 16'hfff7;
          M_testcasecycle_d = ERRORROT_testcasecycle;
        end
        CMPEQ1_testcasecycle: begin
          M_alu_alufn = 6'h33;
          M_autoinputa_d = 16'h0001;
          M_autoinputb_d = 16'h0001;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0001) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = CMPEQ2_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORCOMP_testcasecycle;
            end
          end
        end
        CMPEQ2_testcasecycle: begin
          M_alu_alufn = 6'h33;
          M_autoinputa_d = 16'h0002;
          M_autoinputb_d = 16'h0001;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0000) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = CMPEQ3_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORCOMP_testcasecycle;
            end
          end
        end
        CMPEQ3_testcasecycle: begin
          M_alu_alufn = 6'h33;
          M_autoinputa_d = 16'h0001;
          M_autoinputb_d = 16'h0002;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0000) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = CMPLT1_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORCOMP_testcasecycle;
            end
          end
        end
        CMPLT1_testcasecycle: begin
          M_alu_alufn = 6'h35;
          M_autoinputa_d = 16'h0001;
          M_autoinputb_d = 16'h0001;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0000) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = CMPLT2_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORCOMP_testcasecycle;
            end
          end
        end
        CMPLT2_testcasecycle: begin
          M_alu_alufn = 6'h35;
          M_autoinputa_d = 16'h0002;
          M_autoinputb_d = 16'h0001;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0000) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = CMPLT3_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORCOMP_testcasecycle;
            end
          end
        end
        CMPLT3_testcasecycle: begin
          M_alu_alufn = 6'h35;
          M_autoinputa_d = 16'h0001;
          M_autoinputb_d = 16'h0002;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0001) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = CMPLE1_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORCOMP_testcasecycle;
            end
          end
        end
        CMPLE1_testcasecycle: begin
          M_alu_alufn = 6'h37;
          M_autoinputa_d = 16'h0001;
          M_autoinputb_d = 16'h0001;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0001) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = CMPLE2_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORCOMP_testcasecycle;
            end
          end
        end
        CMPLE2_testcasecycle: begin
          M_alu_alufn = 6'h37;
          M_autoinputa_d = 16'h0002;
          M_autoinputb_d = 16'h0001;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0000) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = CMPLE3_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORCOMP_testcasecycle;
            end
          end
        end
        CMPLE3_testcasecycle: begin
          M_alu_alufn = 6'h37;
          M_autoinputa_d = 16'h0001;
          M_autoinputb_d = 16'h0002;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          if (next_state) begin
            if (M_alu_alu == 16'h0001) begin
              M_clock_d = 16'h0000;
              M_testcasecycle_d = DONE_testcasecycle;
            end else begin
              M_testcasecycle_d = ERRORCOMP_testcasecycle;
            end
          end
        end
        ERRORCOMP_testcasecycle: begin
          indicator = 16'hffef;
          M_testcasecycle_d = ERRORCOMP_testcasecycle;
        end
        DONE_testcasecycle: begin
          indicator = 16'hff00;
          M_testcasecycle_d = DONE_testcasecycle;
        end
      endcase
    end else begin
      
      case (M_tester_q)
        IDLE_tester: begin
          statecheck = 2'h0;
          if (next_state) begin
            M_tester_d = INPUTAVAL_tester;
          end
        end
        INPUTAVAL_tester: begin
          statecheck = 2'h1;
          indicator = switches;
          if (next_state) begin
            M_autoinputa_d = switches;
            M_tester_d = INPUTBVAL_tester;
          end
        end
        INPUTBVAL_tester: begin
          statecheck = 2'h2;
          indicator = switches;
          if (next_state) begin
            M_autoinputb_d = switches;
            M_tester_d = RESULT_tester;
          end
        end
        RESULT_tester: begin
          statecheck = 2'h3;
          M_alu_a = M_autoinputa_q;
          M_alu_b = M_autoinputb_q;
          M_alu_alufn = alufn;
          indicator = M_alu_alu;
          if (next_state) begin
            M_tester_d = IDLE_tester;
          end
        end
      endcase
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_clock_q <= 1'h0;
      M_autoinputa_q <= 1'h0;
      M_autoinputb_q <= 1'h0;
      M_tester_q <= 1'h0;
      M_testcasecycle_q <= 1'h0;
    end else begin
      M_clock_q <= M_clock_d;
      M_autoinputa_q <= M_autoinputa_d;
      M_autoinputb_q <= M_autoinputb_d;
      M_tester_q <= M_tester_d;
      M_testcasecycle_q <= M_testcasecycle_d;
    end
  end
  
endmodule
