; text constants
	const_def 1
	; NPCs
	const_export SAKURA_HOUSE1_TEACHER
	const_export SAKURA_HOUSE1_EEVEE
	; signs

SakuraHouse1_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 3
	warp_event  3,  7, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_TEACHER, STAY, RIGHT, SAKURA_HOUSE1_TEACHER
	object_event  2,  4, SPRITE_ICON_FOX, STAY, NONE, SAKURA_HOUSE1_EEVEE

	def_warps_to SAKURA_HOUSE_1


SakuraHouse1_Script:
	jp EnableAutoTextBoxDrawing

SakuraHouse1_TextPointers:
	dw SakuraHouse1TeacherText
	dw SakuraHouse1EeveeText

SakuraHouse1TeacherText:
	text "I can't decide"
	line "whether to get a"

	para "MOON STONE or a"
	line "SUN STONE to use"
	cont "on my EEVEE."
	done

SakuraHouse1EeveeText:
	text "EEVEE: Ouii!@"
	text_asm
	ld a, EEVEE
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
