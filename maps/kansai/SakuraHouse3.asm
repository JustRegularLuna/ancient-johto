; text constants
	const_def 1
	; NPCs
	const_export SAKURA_HOUSE3_GAMBLER
	const_export SAKURA_HOUSE3_GRANNY
	const_export SAKURA_HOUSE3_HOUNDOUR
	const_export SAKURA_HOUSE3_PIKACHU
	; signs

SakuraHouse3_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 5
	warp_event  3,  7, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GAMBLER, STAY, RIGHT, SAKURA_HOUSE3_GAMBLER
	object_event  5,  3, SPRITE_GRANNY, STAY, LEFT, SAKURA_HOUSE3_GRANNY
	object_event  5,  1, SPRITE_ICON_FOX, STAY, NONE, SAKURA_HOUSE3_HOUNDOUR
	object_event  5,  4, SPRITE_ICON_PIKACHU, STAY, NONE, SAKURA_HOUSE3_PIKACHU

	def_warps_to SAKURA_HOUSE_3


SakuraHouse3_Script:
	jp EnableAutoTextBoxDrawing

SakuraHouse3_TextPointers:
	dw SakuraHouse3GamblerText
	dw SakuraHouse3GrannyText
	dw SakuraHouse3HoundourText
	dw SakuraHouse3PikachuText

SakuraHouse3GamblerText:
	text "I'm quite proud to"
	line "have my HOUNDOUR!"

	para "It's a type that"
	line "was only recently"
	cont "discovered!"
	done

SakuraHouse3GrannyText:
	text "I've had PIKACHU"
	line "here for a long"
	cont "time."

	para "I wouldn't trade"
	line "her for anything."
	done

SakuraHouse3HoundourText:
	text "HOUNDOUR: Houn!@"
	text_asm
	ld a, HOUNDOUR
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

SakuraHouse3PikachuText:
	text "PIKACHU: Pikapi!@"
	text_asm
	ld a, PIKACHU
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
