CeladonMart5F_Object:
	db $0 ; border block

	def_warp_events
	warp_event 12,  1, CELADON_MART_ROOF, 1
	warp_event 16,  1, CELADON_MART_4F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_bg_events

	def_object_events
	object_event 5, 3, SPRITE_CLERK, STAY, DOWN, 1 ; person
	object_event 6, 3, SPRITE_CLERK, STAY, DOWN, 2 ; person

	def_warps_to CELADON_MART_5F

CeladonMart5F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart5F_TextPointers:
	dw CeladonMart5Clerk1Text
	dw CeladonMart5Clerk2Text

INCLUDE "data/items/marts/celadon_5f.asm"
