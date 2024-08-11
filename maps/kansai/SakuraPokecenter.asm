; text constants
	const_def 1
	; NPCs
	const_export SAKURA_POKECENTER_NURSE
	const_export SAKURA_POKECENTER_LINK_RECEPTIONIST
	const_export SAKURA_POKECENTER_WONDER_TRADE_RECEPTIONIST
	const_export SAKURA_POKECENTER_BENCH_GUY
	const_export SAKURA_POKECENTER_LASS
	const_export SAKURA_POKECENTER_YOUNGSTER
	const_export SAKURA_POKECENTER_POKEFAN
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
	object_event  8, 17, SPRITE_LASS, STAY, DOWN, SAKURA_POKECENTER_LASS
	object_event  6, 13, SPRITE_YOUNGSTER, STAY, DOWN, SAKURA_POKECENTER_YOUNGSTER
	object_event  4,  6, SPRITE_POKEFAN_M, STAY, UP, SAKURA_POKECENTER_POKEFAN

	def_warps_to SAKURA_POKECENTER

SakuraPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

SakuraPokecenter_TextPointers:
	dw SakuraHealNurseText
	dw SakuraTradeNurseText
	dw SakuraWonderTradeNurseText
	dw SakuraBenchGuyText
	dw SakuraPokecenterLassText
	dw SakuraPokecenterYoungsterText
	dw SakuraPokecenterPokefanText

SakuraHealNurseText:
	script_pokecenter_nurse

SakuraTradeNurseText:
	script_cable_club_receptionist

SakuraWonderTradeNurseText:
	text_asm
	farcall DoWonderTradeDialogue
	jp TextScriptEnd

SakuraBenchGuyText:
	text_asm
	CheckEvent EVENT_WONDER_TRADE_ENABLED
	jr nz, .canWT
	ld hl, .text1
	jr .done
.canWT
	ld hl, .text2
.done
	call PrintText
	jp TextScriptEnd

.text1
	text "I wonder when the"
	line "WONDER TRADE"
	cont "systems will be"
	cont "back online?"
	done

.text2
	text "Have you heard?"

	para "The WONDER TRADE"
	line "systems are back"
	cont "online now!"
	done

SakuraPokecenterLassText:
	text "I usually stop to"
	line "rest inside of a"
	cont "#MON CENTER"
	cont "whenever I'm on a"
	cont "trip."

	para "It makes me feel"
	line "safer than when I"
	cont "camp out on a"
	cont "ROUTE somewhere."
	done

SakuraPokecenterYoungsterText:
	text "I like to collect"
	line "BERRIES from the"
	cont "little trees you"
	cont "see all along."

	para "They grow back on"
	line "their own, so I"
	cont "don't feel bad"
	cont "about taking any."
	done

SakuraPokecenterPokefanText:
	text "I'm waiting for my"
	line "friend to call me"
	cont "and say that he's"
	cont "ready to trade."
	done
