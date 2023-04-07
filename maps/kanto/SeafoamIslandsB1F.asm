SeafoamIslandsB1F_Object:
	db $7d ; border block

	def_warps
	warp  4,  2, 0, SEAFOAM_ISLANDS_B2F
	warp  7,  5, 4, SEAFOAM_ISLANDS_1F
	warp 13,  7, 2, SEAFOAM_ISLANDS_B2F
	warp 19, 15, 3, SEAFOAM_ISLANDS_B2F
	warp 23, 15, 6, SEAFOAM_ISLANDS_1F
	warp 25, 11, 5, SEAFOAM_ISLANDS_B2F
	warp 25,  3, 5, SEAFOAM_ISLANDS_1F

	def_signs

	def_objects

	def_warps_to SEAFOAM_ISLANDS_B1F

SeafoamIslandsB1F_Script:
	jp EnableAutoTextBoxDrawing

SeafoamIslandsB1F_TextPointers:
	dw -1
