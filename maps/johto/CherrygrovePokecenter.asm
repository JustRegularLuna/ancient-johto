CherrygrovePokecenter_Object:
	db $0 ; border block

	def_warps
	warp  3, 19, 0, LAST_MAP
	warp  4, 19, 0, LAST_MAP
	warp  0, 19, 3, CHERRYGROVE_POKECENTER
	warp  0,  7, 2, CHERRYGROVE_POKECENTER

	def_signs

	def_objects
	object SPRITE_NURSE,  3, 13, STAY, DOWN, 1 ; person
	object SPRITE_LINK_RECEPTIONIST,  5,  2, STAY, DOWN, 2 ; person

	def_warps_to CHERRYGROVE_POKECENTER

CherrygrovePokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

CherrygrovePokecenter_TextPointers:
	dw CherrygroveHealNurseText
	dw CherrygroveTradeNurseText

CherrygroveHealNurseText:
	script_pokecenter_nurse

CherrygroveTradeNurseText:
	script_cable_club_receptionist
