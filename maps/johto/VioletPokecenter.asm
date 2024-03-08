; text constants
	const_def 1
	; NPCs
	const_export VIOLET_POKECENTER_NURSE
	const_export VIOLET_POKECENTER_LINK_RECEPTIONIST
	const_export VIOLET_POKECENTER_WONDER_TRADE_RECEPTIONIST
	const_export VIOLET_POKECENTER_BENCH_LASS
	; signs

VioletPokecenter_Object:
	db $0 ; border block

	def_warps
	warp  3, 19, 2, LAST_MAP
	warp  4, 19, 2, LAST_MAP
	warp  0, 19, 3, VIOLET_POKECENTER
	warp  0,  7, 2, VIOLET_POKECENTER

	def_signs

	def_objects
	object SPRITE_NURSE,  3, 13, STAY, DOWN, VIOLET_POKECENTER_NURSE
	object SPRITE_LINK_RECEPTIONIST,  5,  2, STAY, DOWN, VIOLET_POKECENTER_LINK_RECEPTIONIST
	object SPRITE_LINK_RECEPTIONIST,  1,  1, STAY, DOWN, VIOLET_POKECENTER_WONDER_TRADE_RECEPTIONIST
	object SPRITE_BENCH_LASS,  0, 16, STAY, NONE, VIOLET_POKECENTER_BENCH_LASS

	def_warps_to VIOLET_POKECENTER

VioletPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

VioletPokecenter_TextPointers:
	dw VioletHealNurseText
	dw VioletTradeNurseText
	dw VioletWonderTradeNurseText
	dw VioletBenchLassText

VioletHealNurseText:
	script_pokecenter_nurse

VioletTradeNurseText:
	script_cable_club_receptionist

VioletWonderTradeNurseText:
	text_asm
	farcall DoWonderTradeDialogue
	jp TextScriptEnd

VioletBenchLassText:
	text "I was exploring"
	line "the RUINS OF ALPH"
	cont "earlier."

	para "Something weird is"
	line "going on there…"
	done
