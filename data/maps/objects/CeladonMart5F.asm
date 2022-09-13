CeladonMart5F_Object:
	db $f ; border block

	def_warps
	warp 12,  1, 0, CELADON_MART_ROOF
	warp 16,  1, 1, CELADON_MART_4F
	warp  1,  1, 0, CELADON_MART_ELEVATOR

	def_signs

	def_objects
	object SPRITE_CLERK, 5, 3, STAY, DOWN, 1 ; person
	object SPRITE_CLERK, 6, 3, STAY, DOWN, 2 ; person

	def_warps_to CELADON_MART_5F

CeladonMart5F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart5F_TextPointers:
	dw CeladonMart5Clerk1Text
	dw CeladonMart5Clerk2Text
