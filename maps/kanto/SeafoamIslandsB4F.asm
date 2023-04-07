SeafoamIslandsB4F_Object:
	db $7d ; border block

	def_warps
	warp 20, 17, 5, SEAFOAM_ISLANDS_B3F
	warp 21, 17, 6, SEAFOAM_ISLANDS_B3F
	warp 11,  7, 1, SEAFOAM_ISLANDS_B3F
	warp 25,  4, 2, SEAFOAM_ISLANDS_B3F

	def_signs

	def_objects

	def_warps_to SEAFOAM_ISLANDS_B4F

SeafoamIslandsB4F_Script:
	jp EnableAutoTextBoxDrawing

SeafoamIslandsB4F_TextPointers:
	dw -1
