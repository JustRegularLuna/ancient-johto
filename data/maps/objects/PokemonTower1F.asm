PokemonTower1F_Object:
	db $1 ; border block

	def_warps
	warp 10, 17, 1, LAST_MAP
	warp 11, 17, 1, LAST_MAP
	warp 18,  9, 1, POKEMON_TOWER_2F

	def_signs

	def_objects

	def_warps_to POKEMON_TOWER_1F

PokemonTower1F_Script:
	jp EnableAutoTextBoxDrawing

PokemonTower1F_TextPointers:
	dw -1
