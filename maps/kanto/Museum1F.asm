Museum1F_Object:
	db $a ; border block

	def_warps
	warp 10,  7, 0, LAST_MAP
	warp 11,  7, 0, LAST_MAP
	warp 16,  7, 1, LAST_MAP
	warp 17,  7, 1, LAST_MAP
	warp  7,  7, 0, MUSEUM_2F

	def_signs

	def_objects

	def_warps_to MUSEUM_1F

Museum1F_Script:
	jp EnableAutoTextBoxDrawing

Museum1F_TextPointers:
	dw -1
