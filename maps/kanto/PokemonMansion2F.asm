PokemonMansion2F_Object:
	db $1 ; border block

	def_warps
	warp  5, 10, 4, POKEMON_MANSION_1F
	warp  7, 10, 0, POKEMON_MANSION_3F
	warp 25, 14, 2, POKEMON_MANSION_3F
	warp  6,  1, 1, POKEMON_MANSION_3F

	def_signs

	def_objects

	def_warps_to POKEMON_MANSION_2F

PokemonMansion2F_Script:
	jp EnableAutoTextBoxDrawing

PokemonMansion2F_TextPointers:
	dw -1
