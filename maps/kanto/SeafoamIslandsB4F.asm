SeafoamIslandsB4F_Object:
	db $7d ; border block

	def_warp_events
	warp_event 20, 17, SEAFOAM_ISLANDS_B3F, 6
	warp_event 21, 17, SEAFOAM_ISLANDS_B3F, 7
	warp_event 11,  7, SEAFOAM_ISLANDS_B3F, 2
	warp_event 25,  4, SEAFOAM_ISLANDS_B3F, 3

	def_bg_events

	def_object_events

	def_warps_to SEAFOAM_ISLANDS_B4F

SeafoamIslandsB4F_Script:
	jp EnableAutoTextBoxDrawing

SeafoamIslandsB4F_TextPointers:
	dw -1
