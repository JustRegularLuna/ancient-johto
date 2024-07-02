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

	def_warp_events
	warp_event  3, 19, LAST_MAP, 1
	warp_event  4, 19, LAST_MAP, 1
	warp_event  0, 19, SAKURA_POKECENTER, 4
	warp_event  0,  7, SAKURA_POKECENTER, 3

	def_bg_events

	def_object_events
	object_event  3, 13, SPRITE_NURSE, STAY, DOWN, SAKURA_POKECENTER_NURSE
	object_event  5,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, SAKURA_POKECENTER_LINK_RECEPTIONIST
	object_event  1,  1, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, SAKURA_POKECENTER_WONDER_TRADE_RECEPTIONIST
	object_event  0, 16, SPRITE_BENCH_GUY, STAY, NONE, SAKURA_POKECENTER_BENCH_GUY

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
