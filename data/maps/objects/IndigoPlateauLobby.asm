IndigoPlateauLobby_Object:
	db $0 ; border block

	def_warps
	warp  7, 11, 0, LAST_MAP
	warp  8, 11, 1, LAST_MAP
	warp  8,  0, 0, LORELEIS_ROOM

	def_signs

	def_objects
	object SPRITE_NURSE, 7, 5, STAY, DOWN, 1 ; person
	object SPRITE_CLERK, 0, 5, STAY, RIGHT, 2 ; person
	object SPRITE_LINK_RECEPTIONIST, 13, 6, STAY, DOWN, 3 ; person

	def_warps_to INDIGO_PLATEAU_LOBBY

IndigoPlateauLobby_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	call EnableAutoTextBoxDrawing
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	ret z
	ResetEvent EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH
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
