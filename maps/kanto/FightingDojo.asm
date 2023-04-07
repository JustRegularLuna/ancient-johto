FightingDojo_Object:
	db $3 ; border block

	def_warps
	warp  4, 11, 1, LAST_MAP
	warp  5, 11, 1, LAST_MAP

	def_signs

	def_objects

	def_warps_to FIGHTING_DOJO

FightingDojo_Script:
	jp EnableAutoTextBoxDrawing

FightingDojo_TextPointers:
	dw -1
