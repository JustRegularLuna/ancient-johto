BillsHouse_Object:
	db $d ; border block

	def_warps
	warp  2,  7, 0, LAST_MAP
	warp  3,  7, 0, LAST_MAP

	def_signs

	def_objects

	def_warps_to BILLS_HOUSE

BillsHouse_Script:
	jp EnableAutoTextBoxDrawing

BillsHouse_TextPointers:
	dw -1
