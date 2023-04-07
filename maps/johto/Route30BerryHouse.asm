Route30BerryHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 0, LAST_MAP
	warp  3,  7, 0, LAST_MAP

	def_signs

	def_objects

	def_warps_to ROUTE_30_BERRY_HOUSE


Route30BerryHouse_Script:
	jp EnableAutoTextBoxDrawing

Route30BerryHouse_TextPointers:
	dw Route30BerryHouseText1

Route30BerryHouseText1:
	text "Hello world!"
	done
