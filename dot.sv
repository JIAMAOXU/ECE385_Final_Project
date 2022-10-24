//module  dot
//(		input  frame_clk, Reset,
//      input [9:0]   DrawX, DrawY, BallX, BallY,
//		input is_dot_eaten,
//		output logic is_dot
//		//output logic [7:0] score_out
//);
//logic position[30][40];
//parameter [0:29][39:0] rom = {
//  40'b1111111111111111111111111111111111111111,         
//  40'b1000000000000000000110000000000000000001, 
//  40'b1011111110111111110110111111110111111101,
//  40'b1011111110111111110110111111110111111101,  
//  40'b1011111110111111110110111111110111111101,
//  40'b1000000000000000000000000000000000000001,
//  40'b1011111110110111111111111110110111111101,
//  40'b1000000000110111111111111110110000000001,
//  40'b1111111110110000000110000000110111111111,
//  40'b1111111110111111110110111110110111111111,
//  40'b1111111110110000000000000000110111111111,
//  40'b1111111110110111111001111110110111111111,
//  40'b1000000000000100000000000010000000000001,
//  40'b1111111110110100000000000010110111111111,
//  40'b1111111110110111111111111110110111111111,
//  40'b1111111110110000000000000000110111111111,
//  40'b1111111110110111111111111110110111111111,
//  40'b1000000000000000000110000000000000000001,
//  40'b1011111110111111110110111111110111111101,
//  40'b1011111110111111110110111111110111111101,
//  40'b1000001110000000000000000000000111000001,
//  40'b1111101110111111111111111111110111011111,
//  40'b1111101110111111111111111111110111011111,
//  40'b1000000000000000000110000000000000000001,
//  40'b1011111111111111110110111111111111111101,
//  40'b1000000000000000000000000000000000000001,
//  40'b1111111111111111111111111111111111111111,
//  40'b1111111111111111111111111111111111111111,
//  40'b1111111111111111111111111111111111111111,
//  40'b1111111111111111111111111111111111111111,
// };
//initial
//begin
//		for(int i = 0; i < 30; i++) 
//			for (int j = 0; j < 40; j++)
//				position[i][j] <= rom[i][j];
//end
//always_ff @ (posedge frame_clk) 
//	begin 
//		position[BallY[9:4]][BallX[9:4]] <= 1'b1;
//		is_dot <= position[DrawY[9:4]][DrawX[9:4]];
//	end
//endmodule
//logic dot [480][640];
//logic dot_temp [480][640];
//initial		
//begin
//		for(int i = 0; i < 480; i++) 
//			for (int j = 0; j < 640; j++) 
//				dot[i][j] <= wall_rom[i][j];
//		for(int i = 0; i < 480; i++) 
//			for (int j = 0; j < 640; j++) 
//				dot_temp[i][j] <= wall_rom[i][j];
//end
//int dot_read_address_X, dot_read_address_Y, dot_write_address_X,dot_write_address_Y;
//assign dot_read_address_X = DrawX;
//assign dot_read_address_Y = DrawY;
//assign dot_write_address_X = BallX;
//assign dot_write_address_Y = BallX;                                                                                                                                                                                                                     
//always_ff @ (posedge frame_clk) begin
//	if (Reset) begin
//		for(int i = 0; i < 480; i++) 
//		begin
//			for (int j = 0; j < 640; j++) 
//			begin
//				dot[i][j] <= dot_temp[i][j];
//			end
//		end
//	end	
//	else begin
//		if (is_dot_eaten == 1'b1)
//			begin
//				dot[dot_write_address_Y][dot_write_address_X] <= 1'b1;
//			end
//		is_dot <= dot[dot_read_address_Y][dot_read_address_X];
//	end
//end
//endmodule
