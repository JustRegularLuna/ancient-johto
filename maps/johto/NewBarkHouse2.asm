NewBarkHouse2_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 2, LAST_MAP
	warp  3,  7, 2, LAST_MAP

	def_signs

	def_objects

	def_warps_to NEW_BARK_HOUSE_2


NewBarkHouse2_Script:
	jp EnableAutoTextBoxDrawing

NewBarkHouse2_TextPointers:
	dw NewBarkHouse2Text1

NewBarkHouse2Text1:
	text "Hello world!"
	done
