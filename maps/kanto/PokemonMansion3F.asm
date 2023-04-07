PokemonMansion3F_Object:
	db $1 ; border block

	def_warps
	warp  7, 10, 1, POKEMON_MANSION_2F
	warp  6,  1, 3, POKEMON_MANSION_2F
	warp 25, 14, 2, POKEMON_MANSION_2F

	def_signs

	def_objects

	def_warps_to POKEMON_MANSION_3F

PokemonMansion3F_Script:
	jp EnableAutoTextBoxDrawing

PokemonMansion3F_TextPointers:
	dw -1
