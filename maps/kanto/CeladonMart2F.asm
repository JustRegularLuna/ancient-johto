CeladonMart2F_Object:
	db $0 ; border block

	def_warps
	warp 12,  1, 4, CELADON_MART_1F
	warp 16,  1, 1, CELADON_MART_3F
	warp  1,  1, 0, CELADON_MART_ELEVATOR

	def_signs

	def_objects
	object SPRITE_CLERK, 5, 3, STAY, DOWN, 1 ; person
	object SPRITE_CLERK, 6, 3, STAY, DOWN, 2 ; person

	def_warps_to CELADON_MART_2F

CeladonMart2F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart2F_TextPointers:
	dw CeladonMart2Clerk1Text
	dw CeladonMart2Clerk2Text

INCLUDE "data/items/marts/celadon_2f.asm"
