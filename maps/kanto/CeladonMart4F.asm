CeladonMart4F_Object:
	db $0 ; border block

	def_warp_events
	warp_event 12,  1, CELADON_MART_3F, 1
	warp_event 16,  1, CELADON_MART_5F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_bg_events

	def_object_events
	object_event 5, 7, SPRITE_CLERK, STAY, NONE, 1 ; person

	def_warps_to CELADON_MART_4F

CeladonMart4F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart4F_TextPointers:
	dw CeladonMart4ClerkText

INCLUDE "data/items/marts/celadon_4f.asm"
