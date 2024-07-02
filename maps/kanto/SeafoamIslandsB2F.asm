SeafoamIslandsB2F_Object:
	db $7d ; border block

	def_warp_events
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 1
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 1
	warp_event 13,  7, SEAFOAM_ISLANDS_B1F, 3
	warp_event 19, 15, SEAFOAM_ISLANDS_B1F, 4
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 4
	warp_event 25, 11, SEAFOAM_ISLANDS_B1F, 6
	warp_event 25, 14, SEAFOAM_ISLANDS_B3F, 5

	def_bg_events

	def_object_events

	def_warps_to SEAFOAM_ISLANDS_B2F

SeafoamIslandsB2F_Script:
	jp EnableAutoTextBoxDrawing

SeafoamIslandsB2F_TextPointers:
	dw -1
