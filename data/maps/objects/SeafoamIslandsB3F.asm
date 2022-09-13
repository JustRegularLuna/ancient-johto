SeafoamIslandsB3F_Object:
	db $7d ; border block

	def_warps
	warp  5, 12, 1, SEAFOAM_ISLANDS_B2F
	warp  8,  6, 2, SEAFOAM_ISLANDS_B4F
	warp 25,  4, 3, SEAFOAM_ISLANDS_B4F
	warp 25,  3, 4, SEAFOAM_ISLANDS_B2F
	warp 25, 14, 6, SEAFOAM_ISLANDS_B2F
	warp 20, 17, 0, SEAFOAM_ISLANDS_B4F
	warp 21, 17, 1, SEAFOAM_ISLANDS_B4F

	def_signs

	def_objects

	def_warps_to SEAFOAM_ISLANDS_B3F

SeafoamIslandsB3F_Script:
	jp EnableAutoTextBoxDrawing

SeafoamIslandsB3F_TextPointers:
	dw -1
