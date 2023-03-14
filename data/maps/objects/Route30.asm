; text constants
	const_def 1
	; NPCs

	; Signs

Route30_Object:
	db $5 ; border block

	def_warps
	warp  7, 39, 0, ROUTE_30_BERRY_HOUSE
	warp 17,  5, 1, MR_POKEMONS_HOUSE
	def_signs

	def_objects

	def_warps_to ROUTE_30


Route30_Script:
	jp EnableAutoTextBoxDrawing

Route30_TextPointers:
	dw -1
