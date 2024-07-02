MtMoonPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 1
	warp_event  4,  7, LAST_MAP, 1

	def_bg_events

	def_object_events
	object_event 3, 1, SPRITE_NURSE, STAY, DOWN, 1 ; person
	object_event 11, 2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, 2 ; person

	def_warps_to MT_MOON_POKECENTER

MtMoonPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

MtMoonPokecenter_TextPointers:
	dw MtMoonHealNurseText
	dw MtMoonTradeNurseText

MtMoonHealNurseText:
	script_pokecenter_nurse

MtMoonTradeNurseText:
	script_cable_club_receptionist
