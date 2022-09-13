VermilionTradeHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 7, LAST_MAP
	warp  3,  7, 7, LAST_MAP

	def_signs

	def_objects

	def_warps_to VERMILION_TRADE_HOUSE

VermilionTradeHouse_Script:
	jp EnableAutoTextBoxDrawing

VermilionTradeHouse_TextPointers:
	dw -1
