FuchsiaMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 1
	warp_event  4,  7, LAST_MAP, 1

	def_bg_events

	def_object_events
	object_event 0, 5, SPRITE_CLERK, STAY, RIGHT, 1 ; person

	def_warps_to FUCHSIA_MART

FuchsiaMart_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaMart_TextPointers:
	dw FuchsiaCashierText

INCLUDE "data/items/marts/fuchsia.asm"
