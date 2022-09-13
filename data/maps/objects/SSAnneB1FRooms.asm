SSAnneB1FRooms_Object:
	db $c ; border block

	def_warps
	warp  2,  5, 4, SS_ANNE_B1F
	warp  3,  5, 4, SS_ANNE_B1F
	warp 12,  5, 3, SS_ANNE_B1F
	warp 13,  5, 3, SS_ANNE_B1F
	warp 22,  5, 2, SS_ANNE_B1F
	warp 23,  5, 2, SS_ANNE_B1F
	warp  2, 15, 1, SS_ANNE_B1F
	warp  3, 15, 1, SS_ANNE_B1F
	warp 12, 15, 0, SS_ANNE_B1F
	warp 13, 15, 0, SS_ANNE_B1F

	def_signs

	def_objects

	def_warps_to SS_ANNE_B1F_ROOMS

SSAnneB1FRooms_Script:
	jp EnableAutoTextBoxDrawing

SSAnneB1FRooms_TextPointers:
	dw -1
