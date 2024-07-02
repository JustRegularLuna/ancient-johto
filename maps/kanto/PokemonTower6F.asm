PokemonTower6F_Object:
	db $1 ; border block

	def_warp_events
	warp_event 18,  9, POKEMON_TOWER_5F, 2
	warp_event  9, 16, POKEMON_TOWER_7F, 1

	def_bg_events

	def_object_events

	def_warps_to POKEMON_TOWER_6F

PokemonTower6F_Script:
	jp EnableAutoTextBoxDrawing

PokemonTower6F_TextPointers:
	dw -1
