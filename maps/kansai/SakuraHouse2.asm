; text constants
	const_def 1
	; NPCs
	const_export SAKURA_HOUSE2_GENT
	; signs

SakuraHouse2_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 3, LAST_MAP
	warp  3,  7, 3, LAST_MAP

	def_signs

	def_objects
	object SPRITE_GRAMPS,  2,  3, STAY, RIGHT, SAKURA_HOUSE2_GENT

	def_warps_to SAKURA_HOUSE_2


SakuraHouse2_Script:
	jp EnableAutoTextBoxDrawing

SakuraHouse2_TextPointers:
	dw GuideGentText

GuideGentText:
	text_asm
	CheckEvent EVENT_GOT_TOWN_MAP
	jr nz, .got_item
	ld hl, .IntroductionText
	call PrintText
	lb bc, TOWN_MAP, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedItemText
	call PrintText
	SetEvent EVENT_GOT_TOWN_MAP
	jr .done
.bag_full
	ld hl, .ItemNoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, .ItemExplanationText
	call PrintText
.done
	jp TextScriptEnd

.IntroductionText
	text "You're a rookie"
	line "trainer, aren't"
	cont "you? I can tell!"

	para "It's ok, we were"
	line "all rookies once."

	para "Allow me to help"
	line "you out a bit."
	prompt

.ReceivedItemText
	text "<PLAYER> received"
	line "a TOWN MAP!@"
	sound_get_key_item
	text_end

.ItemNoRoomText
	text "I'm sorry, I don't"
	line "think you can"
	cont "carry this."
	done

.ItemExplanationText
	text "With a TOWN MAP,"
	line "you'll never be"
	cont "lost!"

	para "It doesn't get"
	line "much more helpful"
	cont "than that!"
	done
