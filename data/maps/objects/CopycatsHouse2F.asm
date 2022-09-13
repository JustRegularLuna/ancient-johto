CopycatsHouse2F_Object:
	db $0 ; border block

	def_warps
	warp  7,  0, 2, COPYCATS_HOUSE_1F

	def_signs

	def_objects

	def_warps_to COPYCATS_HOUSE_2F

CopycatsHouse2F_Script:
	jp EnableAutoTextBoxDrawing

CopycatsHouse2F_TextPointers:
	dw -1
