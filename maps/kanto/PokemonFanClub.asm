PokemonFanClub_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 1, LAST_MAP
	warp  3,  7, 1, LAST_MAP

	def_signs

	def_objects

	def_warps_to POKEMON_FAN_CLUB

PokemonFanClub_Script:
	jp EnableAutoTextBoxDrawing

PokemonFanClub_TextPointers:
	dw -1
