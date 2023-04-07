SaffronGym_Object:
	db $2e ; border block

	def_warps
	warp  8, 17, 2, LAST_MAP
	warp  9, 17, 2, LAST_MAP
	warp  1,  3, 22, SAFFRON_GYM
	warp  5,  3, 15, SAFFRON_GYM
	warp  1,  5, 18, SAFFRON_GYM
	warp  5,  5, 8, SAFFRON_GYM
	warp  1,  9, 27, SAFFRON_GYM
	warp  5,  9, 16, SAFFRON_GYM
	warp  1, 11, 5, SAFFRON_GYM
	warp  5, 11, 13, SAFFRON_GYM
	warp  1, 15, 23, SAFFRON_GYM
	warp  5, 15, 30, SAFFRON_GYM
	warp  1, 17, 17, SAFFRON_GYM
	warp  5, 17, 9, SAFFRON_GYM
	warp  9,  3, 26, SAFFRON_GYM
	warp 11,  3, 3, SAFFRON_GYM
	warp  9,  5, 7, SAFFRON_GYM
	warp 11,  5, 12, SAFFRON_GYM
	warp 11, 11, 4, SAFFRON_GYM
	warp 11, 15, 31, SAFFRON_GYM
	warp 15,  3, 24, SAFFRON_GYM
	warp 19,  3, 28, SAFFRON_GYM
	warp 15,  5, 2, SAFFRON_GYM
	warp 19,  5, 10, SAFFRON_GYM
	warp 15,  9, 20, SAFFRON_GYM
	warp 19,  9, 29, SAFFRON_GYM
	warp 15, 11, 14, SAFFRON_GYM
	warp 19, 11, 6, SAFFRON_GYM
	warp 15, 15, 21, SAFFRON_GYM
	warp 19, 15, 25, SAFFRON_GYM
	warp 15, 17, 11, SAFFRON_GYM
	warp 19, 17, 19, SAFFRON_GYM

	def_signs

	def_objects

	def_warps_to SAFFRON_GYM

SaffronGym_Script:
	jp EnableAutoTextBoxDrawing

SaffronGym_TextPointers:
	dw -1
