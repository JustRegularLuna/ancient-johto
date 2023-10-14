; text constants
	const_def 1
	; NPCs
	const_export CHERRYGROVE_MART_CLERK

CherrygroveMart_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 1, LAST_MAP
	warp  2,  7, 1, LAST_MAP

	def_signs

	def_objects
	object SPRITE_CLERK,  1,  3, STAY, RIGHT, CHERRYGROVE_MART_CLERK

	def_warps_to CHERRYGROVE_MART

CherrygroveMart_Script:
	jp EnableAutoTextBoxDrawing

CherrygroveMart_TextPointers:
	dw CherrygroveCashierText

INCLUDE "data/items/marts/cherrygrove.asm"
