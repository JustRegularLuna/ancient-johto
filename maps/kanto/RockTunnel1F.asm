RockTunnel1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 15,  3, LAST_MAP, 2
	warp_event 15,  0, LAST_MAP, 2
	warp_event 15, 33, LAST_MAP, 3
	warp_event 15, 35, LAST_MAP, 3
	warp_event 37,  3, ROCK_TUNNEL_B1F, 1
	warp_event  5,  3, ROCK_TUNNEL_B1F, 2
	warp_event 17, 11, ROCK_TUNNEL_B1F, 3
	warp_event 37, 17, ROCK_TUNNEL_B1F, 4

	def_bg_events

	def_object_events

	def_warps_to ROCK_TUNNEL_1F

RockTunnel1F_Script:
	jp EnableAutoTextBoxDrawing

RockTunnel1F_TextPointers:
	dw -1
