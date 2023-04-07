Route15Gate2F_Object:
	db $a ; border block

	def_warps
	warp  7,  7, 4, ROUTE_15_GATE_1F

	def_signs

	def_objects

	def_warps_to ROUTE_15_GATE_2F

Route15Gate2F_Script:
	jp EnableAutoTextBoxDrawing

Route15Gate2F_TextPointers:
	dw -1
