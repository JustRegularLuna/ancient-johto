Daycare_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 5
	warp_event  3,  7, LAST_MAP, 5

	def_bg_events

	def_object_events

	def_warps_to DAYCARE

Daycare_Script:
	jp EnableAutoTextBoxDrawing

Daycare_TextPointers:
	dw -1
