; text constants
	const_def 1
	; NPCs
	const_export VIOLET_MART_CLERK

VioletMart_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 3, LAST_MAP
	warp  2,  7, 3, LAST_MAP

	def_signs

	def_objects
	object SPRITE_CLERK,  1,  3, STAY, RIGHT, VIOLET_MART_CLERK

	def_warps_to VIOLET_MART

VioletMart_Script:
	jp EnableAutoTextBoxDrawing


VioletMart_TextPointers:
	dw VioletCashierText

INCLUDE "data/items/marts/violet.asm"
