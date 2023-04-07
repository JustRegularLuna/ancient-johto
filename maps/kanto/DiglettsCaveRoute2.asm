DiglettsCaveRoute2_Object:
	db $7d ; border block

	def_warps
	warp  2,  7, 0, LAST_MAP
	warp  3,  7, 0, LAST_MAP
	warp  4,  4, 0, DIGLETTS_CAVE

	def_signs

	def_objects

	def_warps_to DIGLETTS_CAVE_ROUTE_2

DiglettsCaveRoute2_Script:
	ld a, ROUTE_2
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

DiglettsCaveRoute2_TextPointers:
	dw -1
