PlayersHouse2F_Object:
	db $a ; border block

	def_warps
	warp 7, 1, 0, PLAYERS_HOUSE_1F

	def_signs

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
; start out facing the nintendo
	xor a
	ldh [hJoyHeld], a
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a

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
	dw PlayersHouse2FText1

PlayersHouse2FText1:
	text "Hello world!"
	done
