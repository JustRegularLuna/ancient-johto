CherrygroveHouse3_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 4, LAST_MAP
	warp  3,  7, 4, LAST_MAP

	def_signs

	def_objects

	def_warps_to CHERRYGROVE_HOUSE_3


CherrygroveHouse3_Script:
	jp EnableAutoTextBoxDrawing

CherrygroveHouse3_TextPointers:
	dw CherrygroveHouse1Text3

CherrygroveHouse1Text3:
	text "Hello world!"
	done
