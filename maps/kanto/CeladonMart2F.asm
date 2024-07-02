CeladonMart2F_Object:
	db $0 ; border block

	def_warp_events
	warp_event 12,  1, CELADON_MART_1F, 5
	warp_event 16,  1, CELADON_MART_3F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_bg_events

	def_object_events
	object_event 5, 3, SPRITE_CLERK, STAY, DOWN, 1 ; person
	object_event 6, 3, SPRITE_CLERK, STAY, DOWN, 2 ; person

	def_warps_to CELADON_MART_2F

CeladonMart2F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart2F_TextPointers:
	dw CeladonMart2Clerk1Text
	dw CeladonMart2Clerk2Text

INCLUDE "data/items/marts/celadon_2f.asm"
