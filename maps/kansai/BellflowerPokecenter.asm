; text constants
	const_def 1
	; NPCs
	const_export BELLFLOWER_POKECENTER_NURSE
	const_export BELLFLOWER_POKECENTER_LINK_RECEPTIONIST
	const_export BELLFLOWER_POKECENTER_WONDER_TRADE_RECEPTIONIST
	const_export BELLFLOWER_POKECENTER_BENCH_GUY
	const_export BELLFLOWER_POKECENTER_KIMONO_GIRL
	const_export BELLFLOWER_POKECENTER_ELMS_AIDE
	; signs

BellflowerPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3, 19, LAST_MAP, 1
	warp_event  4, 19, LAST_MAP, 1
	warp_event  0, 19, BELLFLOWER_POKECENTER, 4
	warp_event  0,  7, BELLFLOWER_POKECENTER, 3

	def_bg_events

	def_object_events
	object_event  3, 13, SPRITE_NURSE, STAY, DOWN, BELLFLOWER_POKECENTER_NURSE
	object_event  5,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, BELLFLOWER_POKECENTER_LINK_RECEPTIONIST
	object_event  1,  1, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, BELLFLOWER_POKECENTER_WONDER_TRADE_RECEPTIONIST
	object_event  0, 16, SPRITE_BENCH_GUY, STAY, NONE, BELLFLOWER_POKECENTER_BENCH_GUY
	object_event  8, 17, SPRITE_KIMONO_GIRL, STAY, UP, BELLFLOWER_POKECENTER_KIMONO_GIRL
	object_event  5, 15, SPRITE_SCIENTIST, STAY, DOWN, BELLFLOWER_POKECENTER_ELMS_AIDE

	def_warps_to BELLFLOWER_POKECENTER

BellflowerPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

BellflowerPokecenter_TextPointers:
	dw BellflowerHealNurseText
	dw BellflowerTradeNurseText
	dw BellflowerWonderTradeNurseText
	dw BellflowerBenchGuyText
	dw BellflowerKimonoGirlText
	dw BellflowerElmsAideText

BellflowerHealNurseText:
	script_pokecenter_nurse

BellflowerTradeNurseText:
	script_cable_club_receptionist

BellflowerWonderTradeNurseText:
	text_asm
	farcall DoWonderTradeDialogue
	jp TextScriptEnd

BellflowerBenchGuyText:
	text "The MUSEUM here"
	line "has a lot of old"
	cont "relics from the"
	cont "ANCIENT RUINS."
	done

BellflowerKimonoGirlText:
	text "Tradition is very"
	line "important here."

	para "FALKNER even uses"
	line "#MON that were"
	cont "handed down from"
	cont "his father."
	done

BellflowerElmsAideText:
	text "Suh, take this"
	line "damn TOGEPI, why"
	cont "don'cha?"
	done
