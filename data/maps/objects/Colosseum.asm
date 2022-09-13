Colosseum_Object:
	db $e ; border block

	def_warps

	def_signs

	def_objects
	object SPRITE_RED, 2, 2, STAY, 0, 1 ; person

	def_warps_to COLOSSEUM

Colosseum_Script:
	jp TradeCenter_Script

Colosseum_TextPointers:
	dw ColosseumText1

ColosseumText1:
	text_far _ColosseumText1
	text_end
