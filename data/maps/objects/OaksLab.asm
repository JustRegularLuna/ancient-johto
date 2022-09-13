OaksLab_Object:
	db $3 ; border block

	def_warps
	warp  4, 11, 2, LAST_MAP
	warp  5, 11, 2, LAST_MAP

	def_signs

	def_objects

	def_warps_to OAKS_LAB

OaksLab_Script:
	jp EnableAutoTextBoxDrawing

OaksLab_TextPointers:
	dw -1
