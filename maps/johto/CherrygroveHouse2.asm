CherrygroveHouse2_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 3, LAST_MAP
	warp  3,  7, 3, LAST_MAP

	def_signs

	def_objects

	def_warps_to CHERRYGROVE_HOUSE_2


CherrygroveHouse2_Script:
	jp EnableAutoTextBoxDrawing

CherrygroveHouse2_TextPointers:
	dw CherrygroveHouse1Text2

CherrygroveHouse1Text2:
	text "Hello world!"
	done
