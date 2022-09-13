PokemonTower5F_Object:
	db $1 ; border block

	def_warps
	warp  3,  9, 0, POKEMON_TOWER_4F
	warp 18,  9, 0, POKEMON_TOWER_6F

	def_signs

	def_objects

	def_warps_to POKEMON_TOWER_5F

PokemonTower5F_Script:
	jp EnableAutoTextBoxDrawing

PokemonTower5F_TextPointers:
	dw -1
