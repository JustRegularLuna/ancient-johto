Route10_Object:
	db $2c ; border block

	def_warps
	warp 11, 19, 0, ROCK_TUNNEL_POKECENTER
	warp  8, 17, 0, ROCK_TUNNEL_1F
	warp  8, 53, 2, ROCK_TUNNEL_1F
	warp  6, 39, 0, POWER_PLANT

	def_signs

	def_objects

	def_warps_to ROUTE_10

Route10_Script:
	jp EnableAutoTextBoxDrawing

Route10_TextPointers:
	dw -1
