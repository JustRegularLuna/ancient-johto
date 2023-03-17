; text constants
	const_def 1
	; npcs

	; signs
	const PLAYERS_HOUSE_2F_PC
	const PLAYERS_HOUSE_2F_N64

PlayersHouse2F_Object:
	db $0 ; border block

	def_warps
	warp  7,  0, 0, PLAYERS_HOUSE_1F

	def_signs
	sign  2,  1, PLAYERS_HOUSE_2F_PC
	sign  4,  2, PLAYERS_HOUSE_2F_N64

	def_objects

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
; debug event to silently add an eevee to your party
	ld a,$80
	ld [wMonDataLocation],a
	ld a, EEVEE
	ld [wcf91], a
	ld a, 10
	ld [wCurEnemyLVL], a
	call AddPartyMon

	ld de, wPartyMonNicks
	ld hl, EeveesName
	ld bc, $b
	call CopyData

; move on to next script
	ld a, 1
	ld [wPlayersHouse2FCurScript], a
	ret

PlayersHouse2FScript1:
	ret

EeveesName:
	db "MEME@@@@@@@"

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
