CinnabarLabTradeRoom_Object:
	db $17 ; border block

	def_warps
	warp  2,  7, 2, CINNABAR_LAB
	warp  3,  7, 2, CINNABAR_LAB

	def_signs

	def_objects

	def_warps_to CINNABAR_LAB_TRADE_ROOM

CinnabarLabTradeRoom_Script:
	jp EnableAutoTextBoxDrawing

CinnabarLabTradeRoom_TextPointers:
	dw -1
