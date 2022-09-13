Route25_Object:
	db $2c ; border block

	def_warps
	warp 45,  3, 0, BILLS_HOUSE

	def_signs

	def_objects

	def_warps_to ROUTE_25

Route25_Script:
	jp EnableAutoTextBoxDrawing

Route25_TextPointers:
	dw -1
