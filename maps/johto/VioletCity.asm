; text constants
	const_def 1
	; NPCs
	const_export VIOLET_ITEMBALL_1
	const_export VIOLET_ITEMBALL_2
	; Signs

VioletCity_Object:
	db $5 ; border block

	def_warps
	warp 39, 24, 2, ROUTE_31_GATE
	warp 39, 25, 3, ROUTE_31_GATE
	warp 31, 25, 0, VIOLET_POKECENTER
	warp  9, 17, 0, VIOLET_MART
	warp 30, 17, 0, VIOLET_SCHOOL_HOUSE
	warp 21, 29, 0, VIOLET_TRADE_HOUSE
	warp  3, 15, 0, VIOLET_HOUSE_2
	warp 18, 17, 0, VIOLET_GYM
	warp 23,  5, 0, SPROUT_TOWER_1F

	def_signs

	def_objects
	object SPRITE_POKE_BALL,  4,  1, STAY, NONE, VIOLET_ITEMBALL_1, PP_UP
	object SPRITE_POKE_BALL, 35,  5, STAY, NONE, VIOLET_ITEMBALL_2, RARE_CANDY

	def_warps_to VIOLET_CITY


VioletCity_Script:
	jp EnableAutoTextBoxDrawing

VioletCity_TextPointers:
	dw PickUpItemText
	dw PickUpItemText
