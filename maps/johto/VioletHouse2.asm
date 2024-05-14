; text constants
	const_def 1
	; NPCs
	const_export VIOLET_HOUSE2_GIRL
	const_export VIOLET_HOUSE2_LASS
	const_export VIOLET_HOUSE2_BIRD
	; signs

VioletHouse2_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 6, LAST_MAP
	warp  4,  7, 6, LAST_MAP

	def_signs

	def_objects
	object SPRITE_GIRL,  2,  3, STAY, RIGHT, VIOLET_HOUSE2_GIRL
	object SPRITE_LASS,  5,  4, STAY, LEFT, VIOLET_HOUSE2_LASS
	object SPRITE_BIRD,  5,  3, STAY, DOWN, VIOLET_HOUSE2_BIRD

	def_warps_to VIOLET_HOUSE_2


VioletHouse2_Script:
	jp EnableAutoTextBoxDrawing

VioletHouse2_TextPointers:
	dw VioletHouse2GirlText
	dw VioletHouse2LassText
	dw VioletHouse2BirdText

VioletHouse2GirlText:
	text "She always comes"
	line "up with creative"
	cont "names for her"
	cont "#MON."
	done

VioletHouse2LassText:
	text "I nickname all of"
	line "my #MON!"

	para "I called HOOTHOOT"
	line "HOOTIE, because I"
	cont "thought it was a"
	cont "cutie!"
	done

VioletHouse2BirdText:
	text "HOOTIE: Hoooooot!@"
	text_asm
	ld a, HOOTHOOT
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
