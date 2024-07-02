PokemonTower7F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  9, 16, POKEMON_TOWER_6F, 2

	def_bg_events

	def_object_events

	def_warps_to POKEMON_TOWER_7F

PokemonTower7F_Script:
	jp EnableAutoTextBoxDrawing

PokemonTower7F_TextPointers:
	dw -1
