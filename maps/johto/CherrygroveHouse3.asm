; text constants
	const_def 1
	; NPCs
	const_export CHERRYGROVE_HOUSE3_GAMBLER
	const_export CHERRYGROVE_HOUSE3_GRANNY
	const_export CHERRYGROVE_HOUSE3_HOUNDOUR
	const_export CHERRYGROVE_HOUSE3_PIKACHU
	; signs

CherrygroveHouse3_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 4, LAST_MAP
	warp  3,  7, 4, LAST_MAP

	def_signs

	def_objects
	object SPRITE_GAMBLER,  2,  3, STAY, RIGHT, CHERRYGROVE_HOUSE3_GAMBLER
	object SPRITE_GRANNY,  5,  3, STAY, LEFT, CHERRYGROVE_HOUSE3_GRANNY
	object SPRITE_ICON_FOX,  5,  1, STAY, NONE, CHERRYGROVE_HOUSE3_HOUNDOUR
	object SPRITE_ICON_PIKACHU,  5,  4, STAY, NONE, CHERRYGROVE_HOUSE3_PIKACHU

	def_warps_to CHERRYGROVE_HOUSE_3


CherrygroveHouse3_Script:
	jp EnableAutoTextBoxDrawing

CherrygroveHouse3_TextPointers:
	dw CherrygroveHouse3GamblerText
	dw CherrygroveHouse3GrannyText
	dw CherrygroveHouse3HoundourText
	dw CherrygroveHouse3PikachuText

CherrygroveHouse3GamblerText:
	text "I'm quite proud to"
	line "have my HOUNDOUR!"

	para "It's a type that"
	line "was only recently"
	cont "discovered!"
	done

CherrygroveHouse3GrannyText:
	text "I've had PIKACHU"
	line "here for a long"
	cont "time."

	para "I wouldn't trade"
	line "her for anything."
	done

CherrygroveHouse3HoundourText:
	text "HOUNDOUR: Houn!@"
	text_asm
	ld a, HOUNDOUR
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

CherrygroveHouse3PikachuText:
	text "PIKACHU: Pikapi!@"
	text_asm
	ld a, PIKACHU
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
