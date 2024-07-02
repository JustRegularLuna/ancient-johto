PokemonFanClub_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 2
	warp_event  3,  7, LAST_MAP, 2

	def_bg_events

	def_object_events

	def_warps_to POKEMON_FAN_CLUB

PokemonFanClub_Script:
	jp EnableAutoTextBoxDrawing

PokemonFanClub_TextPointers:
	dw -1
