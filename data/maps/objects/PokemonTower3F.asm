PokemonTower3F_Object:
	db $1 ; border block

	def_warps
	warp  3,  9, 0, POKEMON_TOWER_2F
	warp 18,  9, 1, POKEMON_TOWER_4F

	def_signs

	def_objects

	def_warps_to POKEMON_TOWER_3F

PokemonTower3F_Script:
	jp EnableAutoTextBoxDrawing

PokemonTower3F_TextPointers:
	dw -1
