SSAnne1FRooms_Object:
	db $c ; border block

	def_warps
	warp  0,  0, 2, SS_ANNE_1F
	warp 10,  0, 3, SS_ANNE_1F
	warp 20,  0, 4, SS_ANNE_1F
	warp  0, 10, 5, SS_ANNE_1F
	warp 10, 10, 6, SS_ANNE_1F
	warp 20, 10, 7, SS_ANNE_1F

	def_signs

	def_objects

	def_warps_to SS_ANNE_1F_ROOMS

SSAnne1FRooms_Script:
	jp EnableAutoTextBoxDrawing

SSAnne1FRooms_TextPointers:
	dw -1
