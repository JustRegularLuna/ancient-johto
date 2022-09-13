CinnabarPokecenter_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 3, LAST_MAP
	warp  4,  7, 3, LAST_MAP

	def_signs

	def_objects
	object SPRITE_NURSE, 3, 1, STAY, DOWN, 1 ; person
	object SPRITE_LINK_RECEPTIONIST, 11, 2, STAY, DOWN, 2 ; person

	def_warps_to CINNABAR_POKECENTER

CinnabarPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

CinnabarPokecenter_TextPointers:
	dw CinnabarHealNurseText
	dw CinnabarTradeNurseText

CinnabarHealNurseText:
	script_pokecenter_nurse

CinnabarTradeNurseText:
	script_cable_club_receptionist
