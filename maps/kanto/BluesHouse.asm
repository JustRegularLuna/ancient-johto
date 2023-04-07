BluesHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 1, LAST_MAP
	warp  3,  7, 1, LAST_MAP

	def_signs

	def_objects

	def_warps_to BLUES_HOUSE

BluesHouse_Script:
	jp EnableAutoTextBoxDrawing

BluesHouse_TextPointers:
	dw -1
