; text constants
	const_def 1
	; NPCs

	; signs

BellflowerGym_Object:
	db $0 ; border block

	def_warp_events
	warp_event  4, 15, LAST_MAP, 3
	warp_event  5, 15, LAST_MAP, 4

	def_bg_events

	def_object_events
	;object_event  3, 13, SPRITE_NURSE, STAY, DOWN, BELLFLOWER_POKECENTER_NURSE

	def_warps_to BELLFLOWER_GYM


BellflowerGym_Script:
	jp EnableAutoTextBoxDrawing

BellflowerGym_TextPointers:
	dw -1
