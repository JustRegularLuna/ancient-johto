RockTunnel1F_Object:
	db $3 ; border block

	def_warps
	warp 15,  3, 1, LAST_MAP
	warp 15,  0, 1, LAST_MAP
	warp 15, 33, 2, LAST_MAP
	warp 15, 35, 2, LAST_MAP
	warp 37,  3, 0, ROCK_TUNNEL_B1F
	warp  5,  3, 1, ROCK_TUNNEL_B1F
	warp 17, 11, 2, ROCK_TUNNEL_B1F
	warp 37, 17, 3, ROCK_TUNNEL_B1F

	def_signs

	def_objects

	def_warps_to ROCK_TUNNEL_1F

RockTunnel1F_Script:
	jp EnableAutoTextBoxDrawing

RockTunnel1F_TextPointers:
	dw -1
