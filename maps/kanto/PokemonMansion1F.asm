PokemonMansion1F_Object:
	db $2e ; border block

	def_warps
	warp  4, 27, 0, LAST_MAP
	warp  5, 27, 0, LAST_MAP
	warp  6, 27, 0, LAST_MAP
	warp  7, 27, 0, LAST_MAP
	warp  5, 10, 0, POKEMON_MANSION_2F
	warp 21, 23, 0, POKEMON_MANSION_B1F
	warp 26, 27, 0, LAST_MAP
	warp 27, 27, 0, LAST_MAP

	def_signs

	def_objects

	def_warps_to POKEMON_MANSION_1F

PokemonMansion1F_Script:
	jp EnableAutoTextBoxDrawing

PokemonMansion1F_TextPointers:
	dw -1
