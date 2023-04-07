RedsHouse2F_Object:
	db $0 ; border block

	def_warps
	warp  7,  0, 2, REDS_HOUSE_1F

	def_signs

	def_objects

	def_warps_to REDS_HOUSE_2F

RedsHouse2F_Script:
	jp EnableAutoTextBoxDrawing

RedsHouse2F_TextPointers:
	dw -1
