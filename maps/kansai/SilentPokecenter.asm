; text constants
	const_def 1
	; NPCs
	const_export SILENT_POKECENTER_NURSE
	const_export SILENT_POKECENTER_LINK_RECEPTIONIST
	const_export SILENT_POKECENTER_WONDER_TRADE_RECEPTIONIST
	const_export SILENT_POKECENTER_GIRL
	const_export SILENT_POKECENTER_GENTLEMAN

SilentPokecenter_Object:
	db $0 ; border block

	def_warps
	warp  3, 19, 1, LAST_MAP
	warp  4, 19, 1, LAST_MAP
	warp  0, 19, 3, SILENT_POKECENTER
	warp  0,  7, 2, SILENT_POKECENTER

	def_signs

	def_objects
	object SPRITE_NURSE,  3, 13, STAY, DOWN, SILENT_POKECENTER_NURSE
	object SPRITE_LINK_RECEPTIONIST,  5,  2, STAY, DOWN, SILENT_POKECENTER_LINK_RECEPTIONIST
	object SPRITE_LINK_RECEPTIONIST,  1,  1, STAY, DOWN, SILENT_POKECENTER_WONDER_TRADE_RECEPTIONIST
	object SPRITE_BENCH_LASS,  0, 16, STAY, RIGHT, SILENT_POKECENTER_GIRL
	object SPRITE_GENTLEMAN,  6, 14, STAY, DOWN, SILENT_POKECENTER_GENTLEMAN

	def_warps_to SILENT_POKECENTER


SilentPokecenter_Script:
	; Load the appropriate text pointers
	CheckEvent EVENT_GOT_STARTER
	jr nz, .got_pokemon
	ld hl, SilentPokecenter_TextPointers
	jr .done
.got_pokemon
	ld hl, SilentPokecenter_TextPointers2
.done
	ld a, l
	ld [wMapTextPtr], a
	ld a, h
	ld [wMapTextPtr+1], a
	jp EnableAutoTextBoxDrawing


SilentPokecenter_TextPointers:
	dw SilentHealNurseText1
	dw SilentTradeNurseText
	dw SilentWonderTradeNurseText
	dw SilentPokecenterGirlText
	dw SilentPokecenterGentlemanText

SilentPokecenter_TextPointers2:
	dw SilentHealNurseText2
	dw SilentTradeNurseText
	dw SilentWonderTradeNurseText
	dw SilentPokecenterGirlText
	dw SilentPokecenterGentlemanText

SilentHealNurseText1:
	text "Welcome to our"
	line "#MON CENTER!"

	para "What's that?"

	para "No, I haven't seen"
	line "PROF.ELM today."

	para "You should try his"
	line "LAB, near the"
	cont "shoreline."
	done

SilentHealNurseText2:
	script_pokecenter_nurse

SilentTradeNurseText:
	script_cable_club_receptionist

SilentWonderTradeNurseText:
	text_asm
	farcall DoWonderTradeDialogue
	jp TextScriptEnd

SilentPokecenterGirlText:
	text_asm
	CheckEvent EVENT_GOT_STARTER
	ld hl, .whichStartersText
	jr z, .done ; jump if you HAVE NOT got your starter yet
	ld hl, .TalkAboutStarterCommonText
	call PrintText
	ld a, [wPlayerStarter]
	cp STARTER1
	ld hl, .choseCyndaquilText
	jr z, .done
	cp STARTER2
	ld hl, .choseTotodileText
	jr z, .done
	; else you chose Chikorita
	ld hl, .choseChikoritaText
.done
	call PrintText
	jp TextScriptEnd

.whichStartersText
	text "Are you finally"
	line "getting your own"
	cont "#MON today?"

	para "That's awesome!"

	para "I wonder which"
	line "ones PROF.ELM has"

	para "picked out for"
	line "you?"
	done

.TalkAboutStarterCommonText
	text "So, which #MON"
	line "did you choose as"
	cont "your partner?"
	prompt

.choseCyndaquilText
	text "Oh, CYNDAQUIL is"
	line "cute!"

	para "It's so warm and"
	line "cuddly!"

	para "I want one, too!"
	done

.choseTotodileText
	text "Oh, you picked"
	line "TOTODILE?"

	para "They're fun! A bit"
	line "of a handful, but"
	cont "worth it!"
	done

.choseChikoritaText
	text "Ooh, CHIKORITA!"

	para "It's just like a"
	line "mini dinosaur!"
	done

SilentPokecenterGentlemanText:
	text "Any trainer is"
	line "free to use that"
	cont "PC in the corner."

	para "The receptionist"
	line "told me, so kind!"
	done
