PokemonTower6F_Object:
	db $1 ; border block

	def_warps
	warp 18,  9, 1, POKEMON_TOWER_5F
	warp  9, 16, 0, POKEMON_TOWER_7F

	def_signs

	def_objects

	def_warps_to POKEMON_TOWER_6F

PokemonTower6F_Script:
	jp EnableAutoTextBoxDrawing

PokemonTower6F_TextPointers:
	dw -1
