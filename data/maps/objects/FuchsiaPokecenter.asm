FuchsiaPokecenter_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 2, LAST_MAP
	warp  4,  7, 2, LAST_MAP

	def_signs

	def_objects
	object SPRITE_NURSE, 3, 1, STAY, DOWN, 1 ; person
	object SPRITE_LINK_RECEPTIONIST, 11, 2, STAY, DOWN, 2 ; person

	def_warps_to FUCHSIA_POKECENTER

FuchsiaPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

FuchsiaPokecenter_TextPointers:
	dw FuchsiaHealNurseText
	dw FuchsiaTradeNurseText

FuchsiaHealNurseText:
	script_pokecenter_nurse

FuchsiaTradeNurseText:
	script_cable_club_receptionist
