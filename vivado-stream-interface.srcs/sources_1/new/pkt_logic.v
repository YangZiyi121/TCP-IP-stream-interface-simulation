`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2023 02:42:04 PM
// Design Name: 
// Module Name: pkt_logic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pkt_logic(
    input wire clk,
    input wire rst,
    input wire [512+88-1 + 1 : 0] pkt_rx_TDATA,
    input wire pkt_rx_TVALID,
    output wire pkt_rx_TREADY,
    output wire [512+32-1 + 1: 0] pkt_tx_TDATA,
    output reg pkt_tx_TVALID,
    input wire pkt_tx_TREADY
    );
    

reg [32:0] meta_TDATA;


always @* begin
    if(pkt_rx_TVALID == 1) begin
        meta_TDATA = pkt_rx_TDATA[512+32-1 + 1: 513];
    end
end
 
//packet_parser packet_paser_isnt(
//    .clk(clk),
//    .pkt_rx_TDATA(pkt_rx_TDATA[511:0]),
//    .pkt_rx_TVALID(pkt_rx_TVALID),
//    .pkt_rx_TLAST(pkt_rx_TDATA[512]),
//    .pkt_rx_TREADY(pkt_rx_TREADY),
//    .pkt_tx_TDATA_1(pkt_tx_TDATA_1_int),
//    .pkt_tx_TDATA_2 (pkt_tx_TDATA_2_int),
//    .pkt_tx_TVALID(pkt_tx_TVALID_int),
//    .pkt_tx_TREADY(pkt_tx_TREADY)
//    );
    


wire [511:0] pkt_tx_TDATA_payload;

test test_inst(
        .ap_clk(clk),
        .ap_rst_n(1'b0),
        .ap_start(1'b1),
        .ap_done(),
        .ap_idle(),
        .ap_ready(),
        .inStream_TVALID(pkt_rx_TVALID),
        .outStream_TREADY(1'b1),
        .inStream_TDATA(pkt_rx_TDATA[511:0]),
        .inStream_TREADY(),
        .inStream_TKEEP(64'hFFFFFFFFFFFFFFFF),
        .inStream_TSTRB(64'hFFFFFFFFFFFFFFFF),
        .inStream_TLAST(pkt_rx_TVALID),
        .outStream_TDATA(pkt_tx_TDATA_payload),
        .outStream_TVALID(),
        .outStream_TKEEP(),
        .outStream_TSTRB(),
        .outStream_TLAST()
);


reg pkt_tx_TVALID_int;
/******/
always @(posedge clk) begin
   pkt_tx_TVALID_int <= pkt_rx_TVALID;
   pkt_tx_TVALID <= pkt_tx_TVALID_int;
end

assign pkt_tx_TDATA = {meta_TDATA, 1'b1, pkt_tx_TDATA_payload};
assign pkt_rx_TREADY = pkt_tx_TREADY;

endmodule
