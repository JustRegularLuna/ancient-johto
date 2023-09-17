; text constants
	const_def 1
	; NPCs
	const ELMSLAB_RIVAL
	const ELMSLAB_STARTER_BALL_1
	const ELMSLAB_STARTER_BALL_2
	const ELMSLAB_STARTER_BALL_3
	const ELMSLAB_ELM
	const ELMSLAB_AIDE
	; Signs
	const ELMSLAB_BIN
	const ELMSLAB_PC
	; Other

ElmsLab_Object:
	db $3 ; border block

	def_warps
	warp  4, 11, 3, LAST_MAP
	warp  5, 11, 3, LAST_MAP

	def_signs
	sign  9,  3, ELMSLAB_BIN
	sign  0,  1, ELMSLAB_PC

	def_objects
	object SPRITE_RIVAL, 4, 3, STAY, UP, ELMSLAB_RIVAL, RIVAL1, 1
	object SPRITE_POKE_BALL, 6, 3, STAY, NONE, ELMSLAB_STARTER_BALL_1
	object SPRITE_POKE_BALL, 7, 3, STAY, NONE, ELMSLAB_STARTER_BALL_2
	object SPRITE_POKE_BALL, 8, 3, STAY, NONE, ELMSLAB_STARTER_BALL_3
	object SPRITE_ELM, 5, 2, STAY, DOWN, ELMSLAB_ELM
	object SPRITE_SCIENTIST, 8, 10, STAY, NONE, ELMSLAB_AIDE

	def_warps_to ELMS_LAB


ElmsLab_Script:
	jp EnableAutoTextBoxDrawing

ElmsLab_TextPointers:
	dw ElmsLabRivalScript
	dw ElmsLabStarter1Script
	dw ElmsLabStarter2Script
	dw ElmsLabStarter3Script
	dw ElmsLabElmScript
	dw ElmsLabAideScript
	dw ElmsLabBinText
	dw ElmsLabPCText

ElmsLabRivalScript:
	text_asm
	CheckEvent EVENT_GOT_STARTER
	jr nz, .havePokemon
	; before choosing starter
	ld hl, ElmsLabRivalText1
	jr .done
.havePokemon
	ld hl, ElmsLabRivalText2
.done
	call PrintText
	jp TextScriptEnd

ElmsLabRivalText1:
	text "<RIVAL>: Go ahead,"
	line "<PLAYER>…"

	para "I'll let you pick"
	line "first…"
	done

ElmsLabRivalText2:
	text "<RIVAL>: You"
	line "should've known"
	cont "better than that."

	para "What a loser!"
	done

ElmsLabStarter1Script:

ElmsLabStarter2Script:

ElmsLabStarter3Script:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.ELM!"
	done

ElmsLabElmScript:
	text "ELM: Now, <PLAYER>"
	line "which #MON do"
	cont "you want?"

	para "Go on, don't be"
	line "shy!"
	done

ElmsLabAideScript:
	text "There's only two"
	line "of us, so we're"
	cont "always busy."
	done

ElmsLabBinText:
	text "The snack from a"
	line "wrapper PROF.ELM"
	cont "ate is in here…"
	done

ElmsLabPCText:
	text "There's an e-mail"
	line "message here!"

	para "…"

	para "PROF.ELM! I have"
	line "made an astonish-"
	cont "ing discovery!"

	para "I can assure you,"
	line "this time it is"
	cont "very real."

	para "Can you come and"
	line "see me?"
	cont "- MR.#MON"
	done
