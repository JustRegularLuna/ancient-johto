LavenderMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 4
	warp_event  4,  7, LAST_MAP, 4

	def_bg_events

	def_object_events
	object_event 0, 5, SPRITE_CLERK, STAY, RIGHT, 1 ; person

	def_warps_to LAVENDER_MART

LavenderMart_Script:
	jp EnableAutoTextBoxDrawing

LavenderMart_TextPointers:
	dw LavenderCashierText

INCLUDE "data/items/marts/lavender.asm"
