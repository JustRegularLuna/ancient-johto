CinnabarIsland_Object:
	db $43 ; border block

	def_warp_events
	warp_event  6,  3, POKEMON_MANSION_1F, 2
	warp_event 18,  3, CINNABAR_GYM, 1
	warp_event  6,  9, CINNABAR_LAB, 1
	warp_event 11, 11, CINNABAR_POKECENTER, 1
	warp_event 15, 11, CINNABAR_MART, 1

	def_bg_events

	def_object_events

	def_warps_to CINNABAR_ISLAND

CinnabarIsland_Script:
	jp EnableAutoTextBoxDrawing

CinnabarIsland_TextPointers:
	dw -1
