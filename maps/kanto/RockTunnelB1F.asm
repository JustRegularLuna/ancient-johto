RockTunnelB1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 33, 25, ROCK_TUNNEL_1F, 5
	warp_event 27,  3, ROCK_TUNNEL_1F, 6
	warp_event 23, 11, ROCK_TUNNEL_1F, 7
	warp_event  3,  3, ROCK_TUNNEL_1F, 8

	def_bg_events

	def_object_events

	def_warps_to ROCK_TUNNEL_B1F

RockTunnelB1F_Script:
	jp EnableAutoTextBoxDrawing

RockTunnelB1F_TextPointers:
	dw -1
