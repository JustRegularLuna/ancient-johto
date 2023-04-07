Route12Gate2F_Object:
	db $a ; border block

	def_warps
	warp  7,  7, 4, ROUTE_12_GATE_1F

	def_signs

	def_objects

	def_warps_to ROUTE_12_GATE_2F

Route12Gate2F_Script:
	jp EnableAutoTextBoxDrawing

Route12Gate2F_TextPointers:
	dw -1
