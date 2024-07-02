OaksLab_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 11, LAST_MAP, 3
	warp_event  5, 11, LAST_MAP, 3

	def_bg_events

	def_object_events

	def_warps_to OAKS_LAB

OaksLab_Script:
	jp EnableAutoTextBoxDrawing

OaksLab_TextPointers:
	dw -1
