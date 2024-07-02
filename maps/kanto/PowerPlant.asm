PowerPlant_Object:
	db $2e ; border block

	def_warp_events
	warp_event  4, 35, LAST_MAP, 4
	warp_event  5, 35, LAST_MAP, 4
	warp_event  0, 11, LAST_MAP, 4

	def_bg_events

	def_object_events

	def_warps_to POWER_PLANT

PowerPlant_Script:
	jp EnableAutoTextBoxDrawing

PowerPlant_TextPointers:
	dw -1
