CinnabarLab_Object:
	db $17 ; border block

	def_warps
	warp  2,  7, 2, LAST_MAP
	warp  3,  7, 2, LAST_MAP
	warp  8,  4, 0, CINNABAR_LAB_TRADE_ROOM
	warp 12,  4, 0, CINNABAR_LAB_METRONOME_ROOM
	warp 16,  4, 0, CINNABAR_LAB_FOSSIL_ROOM

	def_signs

	def_objects

	def_warps_to CINNABAR_LAB

CinnabarLab_Script:
	jp EnableAutoTextBoxDrawing

CinnabarLab_TextPointers:
	dw -1
