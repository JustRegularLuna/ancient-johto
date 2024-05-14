; text constants
	const_def 1
	; NPCs
	const_export VIOLET_SCHOOL_EARL
	const_export VIOLET_SCHOOL_NOTEBOOK
	const_export VIOLET_SCHOOL_DELINQUENT
	const_export VIOLET_SCHOOL_NOTEBOOK_2
	const_export VIOLET_SCHOOL_LASS
	const_export VIOLET_SCHOOL_SLACKER_1
	const_export VIOLET_SCHOOL_SLACKER_2
	; signs

VioletSchoolHouse_Object:
	db $a ; border block

	def_warps
	warp  3, 15, 4, LAST_MAP
	warp  4, 15, 4, LAST_MAP

	def_signs

	def_objects
	object SPRITE_FISHER,  4,  2, STAY, DOWN, VIOLET_SCHOOL_EARL
	object SPRITE_BOOK,  4,  6, STAY, NONE, VIOLET_SCHOOL_NOTEBOOK
	object SPRITE_FROWNING_MAN,  4,  7, STAY, UP, VIOLET_SCHOOL_DELINQUENT
	object SPRITE_BOOK,  2,  4, STAY, NONE, VIOLET_SCHOOL_NOTEBOOK_2
	object SPRITE_LASS,  2,  5, STAY, UP, VIOLET_SCHOOL_LASS
	object SPRITE_GAMEBOY_KID,  3, 11, STAY, RIGHT, VIOLET_SCHOOL_SLACKER_1
	object SPRITE_GAMEBOY_KID,  4, 11, STAY, LEFT, VIOLET_SCHOOL_SLACKER_2

	def_warps_to VIOLET_SCHOOL_HOUSE


VioletSchoolHouse_Script:
	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp EnableAutoTextBoxDrawing

VioletSchoolHouse_TextPointers:
	dw VioletSchoolEarlText
	dw VioletSchoolNotebookText
	dw VioletSchoolDelinquentText
	dw VioletSchoolNotebook2Text
	dw VioletSchoolLassText
	dw VioletSchoolSlacker1Text
	dw VioletSchoolSlacker2Text

VioletSchoolEarlText:
	text "EARL: Hiya! You"
	line "are new trainer,"
	cont "yes?"

	para "Make sure to study"
	line "carefully!"
	done

VioletSchoolNotebookText:
	text "The writing looks"
	line "like ONIX tracks…"

	para "It's completely"
	line "illegible…"
	done

VioletSchoolDelinquentText:
	text "I don't care about"
	line "this status stuff"
	cont "he's teachin'!"

	para "The only thing I"
	line "care about is if"
	cont "my #MON are"
	cont "tough! Like me!"
	done

VioletSchoolNotebook2Text:
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

VioletSchoolLassText:
	text "There is so much"
	line "to learn!"

	para "I wanna learn all"
	line "I can, because"
	cont "strategy is very"
	cont "important!"
	done

VioletSchoolSlacker1Text:
	text "I don't care much"
	line "about battling."

	para "I just want to"
	line "collect #MON."
	done

VioletSchoolSlacker2Text:
	text "Hey! Don't tell"
	line "the teacher we're"
	cont "trading #MON"
	cont "instead of paying"
	cont "attention, ok?"
	done
