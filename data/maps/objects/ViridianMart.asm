ViridianMart_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 1, LAST_MAP
	warp  4,  7, 1, LAST_MAP

	def_signs

	def_objects
	object SPRITE_CLERK, 0, 5, STAY, RIGHT, 1 ; person

	def_warps_to VIRIDIAN_MART

ViridianMart_Script:
	jp EnableAutoTextBoxDrawing

ViridianMart_TextPointers:
	dw ViridianCashierText