PokemonTower5F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_4F, 1
	warp_event 18,  9, POKEMON_TOWER_6F, 1

	def_bg_events

	def_object_events

	def_warps_to POKEMON_TOWER_5F

PokemonTower5F_Script:
	jp EnableAutoTextBoxDrawing

PokemonTower5F_TextPointers:
	dw -1
