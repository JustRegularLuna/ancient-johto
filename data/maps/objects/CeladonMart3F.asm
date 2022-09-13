CeladonMart3F_Object:
	db $f ; border block

	def_warps
	warp 12,  1, 0, CELADON_MART_4F
	warp 16,  1, 1, CELADON_MART_2F
	warp  1,  1, 0, CELADON_MART_ELEVATOR

	def_signs

	def_objects

	def_warps_to CELADON_MART_3F

CeladonMart3F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart3F_TextPointers:
	dw -1
