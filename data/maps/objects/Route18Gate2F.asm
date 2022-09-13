Route18Gate2F_Object:
	db $a ; border block

	def_warps
	warp  7,  7, 4, ROUTE_18_GATE_1F

	def_signs

	def_objects

	def_warps_to ROUTE_18_GATE_2F

Route18Gate2F_Script:
	jp EnableAutoTextBoxDrawing

Route18Gate2F_TextPointers:
	dw -1
