SaffronPidgeyHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 3, LAST_MAP
	warp  3,  7, 3, LAST_MAP

	def_signs

	def_objects

	def_warps_to SAFFRON_PIDGEY_HOUSE

SaffronPidgeyHouse_Script:
	jp EnableAutoTextBoxDrawing

SaffronPidgeyHouse_TextPointers:
	dw -1
