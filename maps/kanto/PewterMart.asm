PewterMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 5
	warp_event  4,  7, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event 0, 5, SPRITE_CLERK, STAY, RIGHT, 1 ; person

	def_warps_to PEWTER_MART

PewterMart_Script:
	jp EnableAutoTextBoxDrawing

PewterMart_TextPointers:
	dw PewterCashierText

INCLUDE "data/items/marts/pewter.asm"
