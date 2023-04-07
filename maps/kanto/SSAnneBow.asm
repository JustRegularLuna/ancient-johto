SSAnneBow_Object:
	db $23 ; border block

	def_warps
	warp 13,  6, 0, SS_ANNE_3F
	warp 13,  7, 0, SS_ANNE_3F

	def_signs

	def_objects

	def_warps_to SS_ANNE_BOW

SSAnneBow_Script:
	jp EnableAutoTextBoxDrawing

SSAnneBow_TextPointers:
	dw -1
