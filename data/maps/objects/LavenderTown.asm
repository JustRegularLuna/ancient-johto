LavenderTown_Object:
	db $2c ; border block

	def_warps
	warp  3,  5, 0, LAVENDER_POKECENTER
	warp 14,  5, 0, POKEMON_TOWER_1F
	warp  7,  9, 0, MR_FUJIS_HOUSE
	warp 15, 13, 0, LAVENDER_MART
	warp  3, 13, 0, LAVENDER_CUBONE_HOUSE
	warp  7, 13, 0, NAME_RATERS_HOUSE

	def_signs

	def_objects

	def_warps_to LAVENDER_TOWN

LavenderTown_Script:
	jp EnableAutoTextBoxDrawing

LavenderTown_TextPointers:
	dw -1
