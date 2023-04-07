SSAnne2F_Object:
	db $c ; border block

	def_warps
	warp  9, 11,  0, SS_ANNE_2F_ROOMS
	warp 13, 11,  2, SS_ANNE_2F_ROOMS
	warp 17, 11,  4, SS_ANNE_2F_ROOMS
	warp 21, 11,  6, SS_ANNE_2F_ROOMS
	warp 25, 11,  8, SS_ANNE_2F_ROOMS
	warp 29, 11, 10, SS_ANNE_2F_ROOMS
	warp  2,  4,  8, SS_ANNE_1F
	warp  2, 12,  1, SS_ANNE_3F
	warp 36,  4,  0, SS_ANNE_CAPTAINS_ROOM

	def_signs

	def_objects

	def_warps_to SS_ANNE_2F

SSAnne2F_Script:
	jp EnableAutoTextBoxDrawing

SSAnne2F_TextPointers:
	dw -1
