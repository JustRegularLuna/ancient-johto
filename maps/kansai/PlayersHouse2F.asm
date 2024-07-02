; text constants
	const_def 1
	; npcs

	; signs
	const PLAYERS_HOUSE_2F_PC
	const PLAYERS_HOUSE_2F_N64

PlayersHouse2F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  7,  0, PLAYERS_HOUSE_1F, 1

	def_bg_events
	bg_event  2,  1, PLAYERS_HOUSE_2F_PC
	bg_event  4,  2, PLAYERS_HOUSE_2F_N64

	def_object_events

	def_warps_to PLAYERS_HOUSE_2F


PlayersHouse2F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, PlayersHouse2F_ScriptPointers
	ld a, [wPlayersHouse2FCurScript]
	jp CallFunctionInTable

PlayersHouse2F_ScriptPointers:
	dw PlayersHouse2FScript0
	dw PlayersHouse2FScript1

PlayersHouse2FScript0:
; turn to face your N64
	xor a
	ldh [hJoyHeld], a
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a

; move on to next script
	ld a, 1
	ld [wPlayersHouse2FCurScript], a
	; fallthrough
PlayersHouse2FScript1:
	ret

PlayersHouse2F_TextPointers:
	dw PlayersHouse2FPCText
	dw PlayersHouse2FN64Text

PlayersHouse2FPCText:
	script_players_pc

PlayersHouse2FN64Text:
	text "<PLAYER> is playing"
	line "the N64!"

	para "Okay! Time to go!"
	done
