LavenderMart_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 3, LAST_MAP
	warp  4,  7, 3, LAST_MAP

	def_signs

	def_objects
	object SPRITE_CLERK, 0, 5, STAY, RIGHT, 1 ; person

	def_warps_to LAVENDER_MART

LavenderMart_Script:
	jp EnableAutoTextBoxDrawing

LavenderMart_TextPointers:
	dw LavenderCashierText
