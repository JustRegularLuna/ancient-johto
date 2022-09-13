CeladonMartRoof_Object:
	db $42 ; border block

	def_warps
	warp 15,  2, 0, CELADON_MART_5F

	def_signs

	def_objects

	def_warps_to CELADON_MART_ROOF

CeladonMartRoof_Script:
	jp EnableAutoTextBoxDrawing

CeladonMartRoof_TextPointers:
	dw -1
