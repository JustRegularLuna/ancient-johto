Route20_Object:
	db $43 ; border block

	def_warp_events
	warp_event 48,  5, SEAFOAM_ISLANDS_1F, 1
	warp_event 58,  9, SEAFOAM_ISLANDS_1F, 3

	def_bg_events

	def_object_events

	def_warps_to ROUTE_20

Route20_Script:
	jp EnableAutoTextBoxDrawing

Route20_TextPointers:
	dw -1
