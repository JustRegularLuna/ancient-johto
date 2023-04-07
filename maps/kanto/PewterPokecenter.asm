PewterPokecenter_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 6, LAST_MAP
	warp  4,  7, 6, LAST_MAP

	def_signs

	def_objects
	object SPRITE_NURSE, 3, 1, STAY, DOWN, 1 ; person
	object SPRITE_LINK_RECEPTIONIST, 11, 2, STAY, DOWN, 2 ; person

	def_warps_to PEWTER_POKECENTER

PewterPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

PewterPokecenter_TextPointers:
	dw PewterHealNurseText
	dw PewterTradeNurseText

PewterHealNurseText:
	script_pokecenter_nurse

PewterTradeNurseText:
	script_cable_club_receptionist
