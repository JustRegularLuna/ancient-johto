Route11Gate1F_Object:
	db $a ; border block

	def_warps
	warp  0,  4, 0, LAST_MAP
	warp  0,  5, 1, LAST_MAP
	warp  7,  4, 2, LAST_MAP
	warp  7,  5, 3, LAST_MAP
	warp  7,  9, 0, ROUTE_11_GATE_2F

	def_signs

	def_objects

	def_warps_to ROUTE_11_GATE_1F

Route11Gate1F_Script:
	jp EnableAutoTextBoxDrawing

Route11Gate1F_TextPointers:
	dw -1
