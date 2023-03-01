; ===========
; KANTO STUFF
; ===========

HiddenObjectMaps:
	db TRADE_CENTER
	db COLOSSEUM
	db -1 ; end

HiddenObjectPointers:
; each of these pointers is for the corresponding map in HiddenObjectMaps
	dw TradeCenterHiddenObjects
	dw ColosseumHiddenObjects

MACRO hidden_object
	db \2 ; y coord
	db \1 ; x coord
	db \3 ; item id
	dba \4 ; object routine
ENDM

MACRO hidden_text_predef
	db \2 ; y coord
	db \1 ; x coord
	db_tx_pre \3 ; text id
	dba \4 ; object routine
ENDM

; Some hidden objects use SPRITE_FACING_* values,
; but these do not actually prevent the player
; from interacting with them in any direction.
ANY_FACING EQU $d0

TradeCenterHiddenObjects:
	hidden_object  5,  4, ANY_FACING, CableClubRightGameboy
	hidden_object  4,  4, ANY_FACING, CableClubLeftGameboy
	db -1 ; end

ColosseumHiddenObjects:
	hidden_object  5,  4, ANY_FACING, CableClubRightGameboy
	hidden_object  4,  4, ANY_FACING, CableClubLeftGameboy
	db -1 ; end



; ===========
; JOHTO STUFF
; ===========

JohtoHiddenObjectMaps:
	db PLAYERS_HOUSE_2F
	db -1 ; end

JohtoHiddenObjectPointers:
	dw PlayersHouse2FHiddenObjects


PlayersHouse2FHiddenObjects:
	hidden_object  2,  1, SPRITE_FACING_UP, OpenRedsPC
	db -1 ; end
