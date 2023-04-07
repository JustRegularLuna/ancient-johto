Route2TradeHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 2, LAST_MAP
	warp  3,  7, 2, LAST_MAP

	def_signs

	def_objects

	def_warps_to ROUTE_2_TRADE_HOUSE

Route2TradeHouse_Script:
	jp EnableAutoTextBoxDrawing

Route2TradeHouse_TextPointers:
	dw -1
