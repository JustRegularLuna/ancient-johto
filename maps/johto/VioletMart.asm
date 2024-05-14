; text constants
	const_def 1
	; NPCs
	const_export VIOLET_MART_CLERK
	const_export VIOLET_MART_COOLTRAINER

VioletMart_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 3, LAST_MAP
	warp  2,  7, 3, LAST_MAP

	def_signs

	def_objects
	object SPRITE_CLERK,  1,  3, STAY, RIGHT, VIOLET_MART_CLERK
	object SPRITE_COOLTRAINER_M,  8,  3, WALK, LEFT_RIGHT, VIOLET_MART_COOLTRAINER

	def_warps_to VIOLET_MART

VioletMart_Script:
	jp EnableAutoTextBoxDrawing


VioletMart_TextPointers:
	dw VioletCashierText
	dw VioletMartCooltrainerText

INCLUDE "data/items/marts/violet.asm"

VioletMartCooltrainerText:
	text "I'm a big believer"
	line "in those X-items."

	para "You should try"
	line "them some time!"
	done
