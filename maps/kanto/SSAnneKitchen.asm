SSAnneKitchen_Object:
	db $c ; border block

	def_warps
	warp  6,  0, 10, SS_ANNE_1F

	def_signs

	def_objects

	def_warps_to SS_ANNE_KITCHEN

SSAnneKitchen_Script:
	jp EnableAutoTextBoxDrawing

SSAnneKitchen_TextPointers:
	dw -1
