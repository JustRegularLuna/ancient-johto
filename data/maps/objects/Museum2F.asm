Museum2F_Object:
	db $a ; border block

	def_warps
	warp  7,  7, 4, MUSEUM_1F

	def_signs

	def_objects

	def_warps_to MUSEUM_2F

Museum2F_Script:
	jp EnableAutoTextBoxDrawing

Museum2F_TextPointers:
	dw -1
