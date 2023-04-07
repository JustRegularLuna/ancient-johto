MrPokemonsHouse_Object:
	db $17 ; border block

	def_warps
	warp  2,  7, 1, LAST_MAP
	warp  3,  7, 1, LAST_MAP

	def_signs

	def_objects

	def_warps_to MR_POKEMONS_HOUSE


MrPokemonsHouse_Script:
	jp EnableAutoTextBoxDrawing

MrPokemonsHouse_TextPointers:
	dw MrPokemonsHouseText1

MrPokemonsHouseText1:
	text "Hello world!"
	done
