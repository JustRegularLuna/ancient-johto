SSAnneBow_Object:
	db $23 ; border block

	def_warp_events
	warp_event 13,  6, SS_ANNE_3F, 1
	warp_event 13,  7, SS_ANNE_3F, 1

	def_bg_events

	def_object_events

	def_warps_to SS_ANNE_BOW

SSAnneBow_Script:
	jp EnableAutoTextBoxDrawing

SSAnneBow_TextPointers:
	dw -1
