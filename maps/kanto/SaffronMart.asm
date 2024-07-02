SaffronMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 5
	warp_event  4,  7, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event 0, 5, SPRITE_CLERK, STAY, RIGHT, 1 ; person

	def_warps_to SAFFRON_MART

SaffronMart_Script:
	jp EnableAutoTextBoxDrawing

SaffronMart_TextPointers:
	dw SaffronCashierText

INCLUDE "data/items/marts/saffron.asm"
