FightingDojo_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 11, LAST_MAP, 2
	warp_event  5, 11, LAST_MAP, 2

	def_bg_events

	def_object_events

	def_warps_to FIGHTING_DOJO

FightingDojo_Script:
	jp EnableAutoTextBoxDrawing

FightingDojo_TextPointers:
	dw -1
