Museum2F_Object:
	db $a ; border block

	def_warp_events
	warp_event  7,  7, MUSEUM_1F, 5

	def_bg_events

	def_object_events

	def_warps_to MUSEUM_2F

Museum2F_Script:
	jp EnableAutoTextBoxDrawing

Museum2F_TextPointers:
	dw -1
