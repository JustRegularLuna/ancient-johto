; text constants
	const_def 1
	; NPCs
	const_export NEWBARK_HOUSE1_GIRL

NewBarkHouse1_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 1, LAST_MAP
	warp  3,  7, 1, LAST_MAP

	def_signs

	def_objects
	object SPRITE_LASS,  2,  3, STAY, RIGHT, NEWBARK_HOUSE1_GIRL

	def_warps_to NEW_BARK_HOUSE_1


NewBarkHouse1_Script:
	jp EnableAutoTextBoxDrawing

NewBarkHouse1_TextPointers:
	dw NewBarkHouse1GirlText

NewBarkHouse1GirlText:
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
