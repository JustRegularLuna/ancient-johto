IndigoPlateauLobby_Object:
	db $0 ; border block

	def_warp_events
	warp_event  9, 11, LAST_MAP, 1
	warp_event 10, 11, LAST_MAP, 2
	warp_event  8,  0, LORELEIS_ROOM, 1

	def_bg_events

	def_object_events
	object_event  9,  5, SPRITE_NURSE, STAY, DOWN, 1 ; person
	object_event  1,  5, SPRITE_CLERK, STAY, RIGHT, 2 ; person
	object_event 13, 6, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, 3 ; person

	def_warps_to INDIGO_PLATEAU_LOBBY

IndigoPlateauLobby_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	call EnableAutoTextBoxDrawing
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	ret z
	;ResetEvent EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH
	ld hl, wBeatLorelei
	bit 1, [hl]
	res 1, [hl]
	ret z
	; Elite 4 events
	ResetEventRange ELITE4_EVENTS_START, EVENT_LANCES_ROOM_LOCK_DOOR
	ret

IndigoPlateauLobby_TextPointers:
	dw IndigoHealNurseText
	dw IndigoCashierText
	dw IndigoTradeNurseText

IndigoHealNurseText:
	script_pokecenter_nurse

IndigoTradeNurseText:
	script_cable_club_receptionist

INCLUDE "data/items/marts/indigo.asm"
