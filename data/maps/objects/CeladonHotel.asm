CeladonHotel_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 12, LAST_MAP
	warp  4,  7, 12, LAST_MAP

	def_signs

	def_objects

	def_warps_to CELADON_HOTEL

CeladonHotel_Script:
	jp EnableAutoTextBoxDrawing

CeladonHotel_TextPointers:
	dw -1
