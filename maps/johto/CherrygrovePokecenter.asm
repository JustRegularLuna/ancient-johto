; text constants
	const_def 1
	; NPCs
	const CHERRYGROVE_POKECENTER_NURSE
	const CHERRYGROVE_POKECENTER_LINK_RECEPTIONIST
	const CHERRYGROVE_POKECENTER_BENCH_GUY
	const CHERRYGROVE_POKECENTER_GENTLEMAN
	; signs

CherrygrovePokecenter_Object:
	db $0 ; border block

	def_warps
	warp  3, 19, 0, LAST_MAP
	warp  4, 19, 0, LAST_MAP
	warp  0, 19, 3, CHERRYGROVE_POKECENTER
	warp  0,  7, 2, CHERRYGROVE_POKECENTER

	def_signs

	def_objects
	object SPRITE_NURSE,  3, 13, STAY, DOWN, CHERRYGROVE_POKECENTER_NURSE
	object SPRITE_LINK_RECEPTIONIST,  5,  2, STAY, DOWN, CHERRYGROVE_POKECENTER_LINK_RECEPTIONIST
	object SPRITE_BENCH_GUY,  0, 16, STAY, NONE, CHERRYGROVE_POKECENTER_BENCH_GUY
	object SPRITE_GENTLEMAN,  6, 14, STAY, DOWN, CHERRYGROVE_POKECENTER_GENTLEMAN

	def_warps_to CHERRYGROVE_POKECENTER

CherrygrovePokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

CherrygrovePokecenter_TextPointers:
	dw CherrygroveHealNurseText
	dw CherrygroveTradeNurseText
	dw CherrygroveBenchGuyText
	dw CherrygrovePokecenterGentlemanText

CherrygroveHealNurseText:
	script_pokecenter_nurse

CherrygroveTradeNurseText:
	script_cable_club_receptionist

CherrygroveBenchGuyText:
	text "Have you ever met"
	line "BILL? He told me"

	para "he built a TIME"
	line "MACHINE, like the"

	para "one in a film I've"
	line "seen…"

	para "Yeah…"

	para "I don't buy that"
	line "either…"
	done

CherrygrovePokecenterGentlemanText:
	text "Any trainer is"
	line "free to use that"
	cont "PC in the corner."

	para "The receptionist"
	line "told me, so kind!"
	done
