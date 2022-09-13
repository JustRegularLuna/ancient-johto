CopycatsHouse1F_Object:
	db $0 ; border block

	def_warps
	warp  2,  7, 0, LAST_MAP
	warp  3,  7, 0, LAST_MAP
	warp  7,  0, 0, COPYCATS_HOUSE_2F

	def_signs

	def_objects

	def_warps_to COPYCATS_HOUSE_1F

CopycatsHouse1F_Script:
	jp EnableAutoTextBoxDrawing

CopycatsHouse1F_TextPointers:
	dw -1
