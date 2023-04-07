WardensHouse_Object:
	db $17 ; border block

	def_warps
	warp  4,  7, 3, LAST_MAP
	warp  5,  7, 3, LAST_MAP

	def_signs

	def_objects

	def_warps_to WARDENS_HOUSE

WardensHouse_Script:
	jp EnableAutoTextBoxDrawing

WardensHouse_TextPointers:
	dw -1
