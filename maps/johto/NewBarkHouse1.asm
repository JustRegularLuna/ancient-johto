NewBarkHouse1_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 1, LAST_MAP
	warp  3,  7, 1, LAST_MAP

	def_signs

	def_objects

	def_warps_to NEW_BARK_HOUSE_1


NewBarkHouse1_Script:
	jp EnableAutoTextBoxDrawing

NewBarkHouse1_TextPointers:
	dw NewBarkHouse1Text1

NewBarkHouse1Text1:
	text "Hello world!"
	done
