CinnabarLabMetronomeRoom_Object:
	db $17 ; border block

	def_warps
	warp  2,  7, 3, CINNABAR_LAB
	warp  3,  7, 3, CINNABAR_LAB

	def_signs

	def_objects

	def_warps_to CINNABAR_LAB_METRONOME_ROOM

CinnabarLabMetronomeRoom_Script:
	jp EnableAutoTextBoxDrawing

CinnabarLabMetronomeRoom_TextPointers:
	dw -1
