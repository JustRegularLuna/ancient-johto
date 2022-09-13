CeruleanPokecenter_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 2, LAST_MAP
	warp  4,  7, 2, LAST_MAP

	def_signs

	def_objects
	object SPRITE_NURSE, 3, 1, STAY, DOWN, 1 ; person
	object SPRITE_LINK_RECEPTIONIST, 11, 2, STAY, DOWN, 2 ; person

	def_warps_to CERULEAN_POKECENTER

CeruleanPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

CeruleanPokecenter_TextPointers:
	dw CeruleanHealNurseText
	dw CeruleanTradeNurseText

CeruleanHealNurseText:
	script_pokecenter_nurse

CeruleanTradeNurseText:
	script_cable_club_receptionist
