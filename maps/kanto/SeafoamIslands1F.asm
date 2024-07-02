SeafoamIslands1F_Object:
	db $7d ; border block

	def_warp_events
	warp_event  4, 17, LAST_MAP, 1
	warp_event  5, 17, LAST_MAP, 1
	warp_event 26, 17, LAST_MAP, 2
	warp_event 27, 17, LAST_MAP, 2
	warp_event  7,  5, SEAFOAM_ISLANDS_B1F, 2
	warp_event 25,  3, SEAFOAM_ISLANDS_B1F, 7
	warp_event 23, 15, SEAFOAM_ISLANDS_B1F, 5

	def_bg_events

	def_object_events

	def_warps_to SEAFOAM_ISLANDS_1F

	; holes
	warp_to 17, 6, SEAFOAM_ISLANDS_1F_WIDTH
	warp_to 24, 6, SEAFOAM_ISLANDS_1F_WIDTH

SeafoamIslands1F_Script:
	jp EnableAutoTextBoxDrawing

SeafoamIslands1F_TextPointers:
	dw -1
