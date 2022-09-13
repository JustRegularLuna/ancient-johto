CinnabarLabFossilRoom_Object:
	db $17 ; border block

	def_warps
	warp  2,  7, 4, CINNABAR_LAB
	warp  3,  7, 4, CINNABAR_LAB

	def_signs

	def_objects

	def_warps_to CINNABAR_LAB_FOSSIL_ROOM

CinnabarLabFossilRoom_Script:
	jp EnableAutoTextBoxDrawing

CinnabarLabFossilRoom_TextPointers:
	dw -1
