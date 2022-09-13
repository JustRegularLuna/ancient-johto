SSAnne2FRooms_Object:
	db $c ; border block

	def_warps
	warp  2,  5, 0, SS_ANNE_2F
	warp  3,  5, 0, SS_ANNE_2F
	warp 12,  5, 1, SS_ANNE_2F
	warp 13,  5, 1, SS_ANNE_2F
	warp 22,  5, 2, SS_ANNE_2F
	warp 23,  5, 2, SS_ANNE_2F
	warp  2, 15, 3, SS_ANNE_2F
	warp  3, 15, 3, SS_ANNE_2F
	warp 12, 15, 4, SS_ANNE_2F
	warp 13, 15, 4, SS_ANNE_2F
	warp 22, 15, 5, SS_ANNE_2F
	warp 23, 15, 5, SS_ANNE_2F

	def_signs

	def_objects

	def_warps_to SS_ANNE_2F_ROOMS

SSAnne2FRooms_Script:
	jp EnableAutoTextBoxDrawing

SSAnne2FRooms_TextPointers:
	dw -1
