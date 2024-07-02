SSAnneKitchen_Object:
	db $c ; border block

	def_warp_events
	warp_event  6,  0, SS_ANNE_1F, 11

	def_bg_events

	def_object_events

	def_warps_to SS_ANNE_KITCHEN

SSAnneKitchen_Script:
	jp EnableAutoTextBoxDrawing

SSAnneKitchen_TextPointers:
	dw -1
