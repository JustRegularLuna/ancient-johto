; text constants
	const_def 1
	; NPCs
	const_export SAKURA_POKECENTER_NURSE
	const_export SAKURA_POKECENTER_LINK_RECEPTIONIST
	const_export SAKURA_POKECENTER_WONDER_TRADE_RECEPTIONIST
	const_export SAKURA_POKECENTER_BENCH_GUY
	; signs

SakuraPokecenter_Object:
	db $0 ; border block

	def_warps
	warp  3, 19, 0, LAST_MAP
	warp  4, 19, 0, LAST_MAP
	warp  0, 19, 3, SAKURA_POKECENTER
	warp  0,  7, 2, SAKURA_POKECENTER

	def_signs

	def_objects
	object SPRITE_NURSE,  3, 13, STAY, DOWN, SAKURA_POKECENTER_NURSE
	object SPRITE_LINK_RECEPTIONIST,  5,  2, STAY, DOWN, SAKURA_POKECENTER_LINK_RECEPTIONIST
	object SPRITE_LINK_RECEPTIONIST,  1,  1, STAY, DOWN, SAKURA_POKECENTER_WONDER_TRADE_RECEPTIONIST
	object SPRITE_BENCH_GUY,  0, 16, STAY, NONE, SAKURA_POKECENTER_BENCH_GUY

	def_warps_to SAKURA_POKECENTER

SakuraPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

SakuraPokecenter_TextPointers:
	dw SakuraHealNurseText
	dw SakuraTradeNurseText
	dw SakuraWonderTradeNurseText
	dw SakuraBenchGuyText

SakuraHealNurseText:
	script_pokecenter_nurse

SakuraTradeNurseText:
	script_cable_club_receptionist

SakuraWonderTradeNurseText:
	text_asm
	farcall DoWonderTradeDialogue
	jp TextScriptEnd

SakuraBenchGuyText:
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
