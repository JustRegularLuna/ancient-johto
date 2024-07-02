Colosseum_Object:
	db $e ; border block

	def_warp_events

	def_bg_events

	def_object_events
	object_event 2, 2, SPRITE_PLAYER, STAY, 0, 1 ; person

	def_warps_to COLOSSEUM

Colosseum_Script:
	jp TradeCenter_Script

Colosseum_TextPointers:
	dw ColosseumText1

ColosseumText1:
	text_far _ColosseumText1
	text_end
