module project( input clock_50, input [0:0] KEY, output pwm_o);

system Nios_system(.clk_clk (clock_50),
					.reset_reset_n (KEY[0]),
					.pwm_m_0_conduit_end_export (pwm_o));
					
endmodule