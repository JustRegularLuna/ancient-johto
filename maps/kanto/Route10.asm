Route10_Object:
	db $2c ; border block

	def_warp_events
	warp_event 11, 19, ROCK_TUNNEL_POKECENTER, 1
	warp_event  8, 17, ROCK_TUNNEL_1F, 1
	warp_event  8, 53, ROCK_TUNNEL_1F, 3
	warp_event  6, 39, POWER_PLANT, 1

	def_bg_events

	def_object_events

	def_warps_to ROUTE_10

Route10_Script:
	jp EnableAutoTextBoxDrawing

Route10_TextPointers:
	dw -1
