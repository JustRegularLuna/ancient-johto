PlayersHouse1F_Object:
	db $a ; border block

	def_warps
	warp 9, 1, 0, PLAYERS_HOUSE_2F
	warp 6, 7, 0, LAST_MAP
	warp 7, 7, 0, LAST_MAP

	def_signs
	sign  7,  1, 2 ; TV

	def_objects
	object SPRITE_MOM,  7,  4, STAY, LEFT, 1 ; Mom

	def_warps_to PLAYERS_HOUSE_1F


PlayersHouse1F_Script:
	jp EnableAutoTextBoxDrawing

PlayersHouse1F_TextPointers:
	dw PlayersHouse1FMomText
	dw PlayersHouse1FTVText

PlayersHouse1FMomText:
	text_asm
	ld a, [wd72e]
	bit 3, a ; received a Pokémon from Oak?
	jr nz, .heal
	ld hl, PlayersHouseMomWakeUpText
	call PrintText
	jr .done
.heal
	call PlayersHouseMomHealPokemon
.done
	jp TextScriptEnd

PlayersHouseMomWakeUpText:
	text "MOM: <PLAYER>!"
	line "PROF.ELM is wait-"
	cont "ing for you."

	para "Hurry up, baby!"
	done

PlayersHouseMomHealPokemon:
	ld hl, PlayersHouseMomHealText1
	call PrintText
	call GBFadeOutToWhite
	call ReloadMapData
	predef HealParty
	ld a, MUSIC_PKMN_HEALED
;	ld [wNewSoundID], a
	call PlayMusic

	call WaitForSongToFinish
;.next
;	ld a, [wChannelSoundIDs]
;	cp MUSIC_PKMN_HEALED
;	jr z, .next

	ld a, [wMapMusicSoundID]
;	ld [wNewSoundID], a
	call PlayMusic
	call GBFadeInFromWhite
	ld hl, PlayersHouseMomHealText2
	jp PrintText

PlayersHouseMomHealText1:
	text "MOM: <PLAYER>!"
	line "You should take a"
	cont "quick rest."
	prompt

PlayersHouseMomHealText2:
	text "MOM: Oh good!"
	line "You and your"
	cont "#MON are"
	cont "looking great!"
	cont "Take care now!"
	done

PlayersHouse1FTVText:
	text_asm
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ld hl, PlayersHouseTVWrongSideText
	jr nz, .got_text
	ld hl, PlayersHouseMovieText
.got_text
	call PrintText
	jp TextScriptEnd

PlayersHouseMovieText:
	text "There's a movie on"
	line "TV: Stars dot the"

	para "sky as two boys"
	line "ride on a train…"

	para "I'd better get"
	line "rolling too!"
	done

PlayersHouseTVWrongSideText:
	text "Oops, wrong side."
	done
