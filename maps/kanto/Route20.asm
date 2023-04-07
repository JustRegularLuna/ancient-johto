Route20_Object:
	db $43 ; border block

	def_warps
	warp 48,  5, 0, SEAFOAM_ISLANDS_1F
	warp 58,  9, 2, SEAFOAM_ISLANDS_1F

	def_signs

	def_objects

	def_warps_to ROUTE_20

Route20_Script:
	jp EnableAutoTextBoxDrawing

Route20_TextPointers:
	dw -1
