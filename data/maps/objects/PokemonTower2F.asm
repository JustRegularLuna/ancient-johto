PokemonTower2F_Object:
	db $1 ; border block

	def_warps
	warp  3,  9, 0, POKEMON_TOWER_3F
	warp 18,  9, 2, POKEMON_TOWER_1F

	def_signs

	def_objects

	def_warps_to POKEMON_TOWER_2F

PokemonTower2F_Script:
	jp EnableAutoTextBoxDrawing

PokemonTower2F_TextPointers:
	dw -1
