DEF HIDE EQU $11
DEF SHOW EQU $15

; MissableObjects indexes (see data/maps/hide_show_data.asm)
; this is a list of the sprites that can be enabled/disabled during the game
; sprites marked with an X are constants that are never used
; because those sprites are not (de)activated in a map's script
; (they are either items or sprites that deactivate after battle
; and are detected in wMissableObjectList)

	const_def

	const HS_CHAMPIONS_ROOM_OAK
DEF NUM_HS_OBJECTS EQU const_value


; Kansai flags
	const_def
	const HS_SILENT_RIVAL
	const HS_SAKURA_RIVAL
	const HS_KANSAI_ROUTE_1_ITEMBALL
	const HS_STARTER_BALL_1
	const HS_STARTER_BALL_2
	const HS_STARTER_BALL_3
	const HS_MR_POKEMONS_HOUSE_OAK

DEF NUM_KANSAI_HS_OBJECTS EQU const_value
