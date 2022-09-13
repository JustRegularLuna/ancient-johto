CinnabarIsland_Object:
	db $43 ; border block

	def_warps
	warp  6,  3, 1, POKEMON_MANSION_1F
	warp 18,  3, 0, CINNABAR_GYM
	warp  6,  9, 0, CINNABAR_LAB
	warp 11, 11, 0, CINNABAR_POKECENTER
	warp 15, 11, 0, CINNABAR_MART

	def_signs

	def_objects

	def_warps_to CINNABAR_ISLAND

CinnabarIsland_Script:
	jp EnableAutoTextBoxDrawing

CinnabarIsland_TextPointers:
	dw -1
