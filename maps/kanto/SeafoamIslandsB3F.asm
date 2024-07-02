SeafoamIslandsB3F_Object:
	db $7d ; border block

	def_warp_events
	warp_event  5, 12, SEAFOAM_ISLANDS_B2F, 2
	warp_event  8,  6, SEAFOAM_ISLANDS_B4F, 3
	warp_event 25,  4, SEAFOAM_ISLANDS_B4F, 4
	warp_event 25,  3, SEAFOAM_ISLANDS_B2F, 5
	warp_event 25, 14, SEAFOAM_ISLANDS_B2F, 7
	warp_event 20, 17, SEAFOAM_ISLANDS_B4F, 1
	warp_event 21, 17, SEAFOAM_ISLANDS_B4F, 2

	def_bg_events

	def_object_events

	def_warps_to SEAFOAM_ISLANDS_B3F

SeafoamIslandsB3F_Script:
	jp EnableAutoTextBoxDrawing

SeafoamIslandsB3F_TextPointers:
	dw -1
