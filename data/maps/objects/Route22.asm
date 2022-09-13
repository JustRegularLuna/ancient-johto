Route22_Object:
	db $2c ; border block

	def_warps
	warp  8,  5, 0, ROUTE_22_GATE

	def_signs

	def_objects

	def_warps_to ROUTE_22

Route22_Script:
	jp EnableAutoTextBoxDrawing

Route22_TextPointers:
	dw -1
