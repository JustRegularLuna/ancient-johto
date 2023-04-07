PokemonTower7F_Object:
	db $1 ; border block

	def_warps
	warp  9, 16, 1, POKEMON_TOWER_6F

	def_signs

	def_objects

	def_warps_to POKEMON_TOWER_7F

PokemonTower7F_Script:
	jp EnableAutoTextBoxDrawing

PokemonTower7F_TextPointers:
	dw -1
