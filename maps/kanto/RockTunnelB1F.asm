RockTunnelB1F_Object:
	db $3 ; border block

	def_warps
	warp 33, 25, 4, ROCK_TUNNEL_1F
	warp 27,  3, 5, ROCK_TUNNEL_1F
	warp 23, 11, 6, ROCK_TUNNEL_1F
	warp  3,  3, 7, ROCK_TUNNEL_1F

	def_signs

	def_objects

	def_warps_to ROCK_TUNNEL_B1F

RockTunnelB1F_Script:
	jp EnableAutoTextBoxDrawing

RockTunnelB1F_TextPointers:
	dw -1
