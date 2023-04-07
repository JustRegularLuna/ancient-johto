PokemonMansionB1F_Object:
	db $1 ; border block

	def_warps
	warp 23, 22, 5, POKEMON_MANSION_1F

	def_signs

	def_objects

	def_warps_to POKEMON_MANSION_B1F

PokemonMansionB1F_Script:
	jp EnableAutoTextBoxDrawing

PokemonMansionB1F_TextPointers:
	dw -1
