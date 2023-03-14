CeladonMart4F_Object:
	db $0 ; border block

	def_warps
	warp 12,  1, 0, CELADON_MART_3F
	warp 16,  1, 1, CELADON_MART_5F
	warp  1,  1, 0, CELADON_MART_ELEVATOR

	def_signs

	def_objects
	object SPRITE_CLERK, 5, 7, STAY, NONE, 1 ; person

	def_warps_to CELADON_MART_4F

CeladonMart4F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart4F_TextPointers:
	dw CeladonMart4ClerkText

INCLUDE "data/items/marts/celadon_4f.asm"
