CherrygroveHouse1_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 2, LAST_MAP
	warp  3,  7, 2, LAST_MAP

	def_signs

	def_objects

	def_warps_to CHERRYGROVE_HOUSE_1


CherrygroveHouse1_Script:
	jp EnableAutoTextBoxDrawing

CherrygroveHouse1_TextPointers:
	dw CherrygroveHouse1Text1

CherrygroveHouse1Text1:
	text "Hello world!"
	done
