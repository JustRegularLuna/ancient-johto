DiglettsCaveRoute2_Object:
	db $7d ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 1
	warp_event  3,  7, LAST_MAP, 1
	warp_event  4,  4, DIGLETTS_CAVE, 1

	def_bg_events

	def_object_events

	def_warps_to DIGLETTS_CAVE_ROUTE_2

DiglettsCaveRoute2_Script:
	ld a, ROUTE_2
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

DiglettsCaveRoute2_TextPointers:
	dw -1
