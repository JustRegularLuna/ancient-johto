; text constants
	const_def 1
	; NPCs
	const_export BELLFLOWER_SCHOOL_EARL
	const_export BELLFLOWER_SCHOOL_NOTEBOOK
	const_export BELLFLOWER_SCHOOL_DELINQUENT
	const_export BELLFLOWER_SCHOOL_NOTEBOOK_2
	const_export BELLFLOWER_SCHOOL_LASS
	const_export BELLFLOWER_SCHOOL_SLACKER_1
	const_export BELLFLOWER_SCHOOL_SLACKER_2
	; signs

BellflowerSchoolHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  3, 15, LAST_MAP, 5
	warp_event  4, 15, LAST_MAP, 6

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_FISHER, STAY, DOWN, BELLFLOWER_SCHOOL_EARL
	object_event  4,  6, SPRITE_BOOK, STAY, NONE, BELLFLOWER_SCHOOL_NOTEBOOK
	object_event  4,  7, SPRITE_FROWNING_MAN, STAY, UP, BELLFLOWER_SCHOOL_DELINQUENT
	object_event  2,  4, SPRITE_BOOK, STAY, NONE, BELLFLOWER_SCHOOL_NOTEBOOK_2
	object_event  2,  5, SPRITE_LASS, STAY, UP, BELLFLOWER_SCHOOL_LASS
	object_event  3, 11, SPRITE_GAMEBOY_KID, STAY, RIGHT, BELLFLOWER_SCHOOL_SLACKER_1
	object_event  4, 11, SPRITE_GAMEBOY_KID, STAY, LEFT, BELLFLOWER_SCHOOL_SLACKER_2

	def_warps_to BELLFLOWER_SCHOOL_HOUSE


BellflowerSchoolHouse_Script:
	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp EnableAutoTextBoxDrawing

BellflowerSchoolHouse_TextPointers:
	dw BellflowerSchoolEarlText
	dw BellflowerSchoolNotebookText
	dw BellflowerSchoolDelinquentText
	dw BellflowerSchoolNotebook2Text
	dw BellflowerSchoolLassText
	dw BellflowerSchoolSlacker1Text
	dw BellflowerSchoolSlacker2Text

BellflowerSchoolEarlText:
	text "EARL: Hiya! You"
	line "are new trainer,"
	cont "yes?"

	para "Make sure to study"
	line "carefully!"
	done

BellflowerSchoolNotebookText:
	text "The writing looks"
	line "like ONIX tracks…"

	para "It's completely"
	line "illegible…"
	done

BellflowerSchoolDelinquentText:
	text "I don't care about"
	line "this STATUS stuff"
	cont "he's teachin'!"

	para "The only thing I"
	line "care about is if"
	cont "my #MON are"
	cont "tough! Like me!"
	done

BellflowerSchoolNotebook2Text:
	text_asm
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, .ItsANotebookText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .stopReading
	ld hl, .Page1Text
	call PrintText
	call .AskKeepReading
	jr nz, .stopReading
	ld hl, .Page2Text
	call PrintText
	call .AskKeepReading
	jr nz, .stopReading
	ld hl, .Page3Text
	call PrintText
	call .AskKeepReading
	jr nz, .stopReading
	ld hl, .Page4Text
	call PrintText
.stopReading
	jp TextScriptEnd

.AskKeepReading
	ld hl, .KeepReadingText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ret

.ItsANotebookText
	text "Read her notes?"
	done

.KeepReadingText
	text "Keep reading?"
	done

.Page1Text
	text "First page…"

	para "Some attacks can"
	line "be used outside"
	cont "of battle, such"
	cont "as HEADBUTT."
	prompt

.Page2Text
	text "Second page…"

	para "Some attacks boost"
	line "more than one of"
	cont "a #MON's stats"
	cont "at once."
	prompt

.Page3Text
	text "Third page…"

	para "Some #MON, such"
	line "as SCYTHER, only"
	cont "evolve via item."
	prompt

.Page4Text
	text "Fourth page…"

	para "Status conditions"
	line "can noticeably"
	cont "impact battles,"
	cont "beyond what pure"
	cont "offense can do."
	prompt

BellflowerSchoolLassText:
	text "There is so much"
	line "to learn!"

	para "I wanna learn all"
	line "I can, because"
	cont "strategy is very"
	cont "important!"
	done

BellflowerSchoolSlacker1Text:
	text "I don't care much"
	line "about battling."

	para "I just want to"
	line "collect #MON."
	done

BellflowerSchoolSlacker2Text:
	text "Hey! Don't tell"
	line "the teacher we're"
	cont "trading #MON"
	cont "instead of paying"
	cont "attention, ok?"
	done
