RedsHouse1F_Object:
	db $0 ; border block

	def_warps
	warp  2,  7, 0, LAST_MAP
	warp  3,  7, 0, LAST_MAP
	warp  7,  0, 0, REDS_HOUSE_2F

	def_signs

	def_objects

	def_warps_to REDS_HOUSE_1F

RedsHouse1F_Script:
	jp EnableAutoTextBoxDrawing

RedsHouse1F_TextPointers:
	dw -1
