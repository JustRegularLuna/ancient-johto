	const_def 1
	; NPCs
	const_export BERRYHOUSE_HIKER
	const_export BERRYHOUSE_POKEMON
	; Signs
	const BERRYHOUSE_TV

Route30BerryHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 0, LAST_MAP
	warp  3,  7, 0, LAST_MAP

	def_signs
	sign  4,  1, BERRYHOUSE_TV

	def_objects
	object SPRITE_POKEFAN_M,  2,  3, STAY, RIGHT, BERRYHOUSE_HIKER
	object SPRITE_ICON_GEODUDE,  6,  1, STAY, NONE, BERRYHOUSE_POKEMON

	def_warps_to ROUTE_30_BERRY_HOUSE


Route30BerryHouse_Script:
	jp EnableAutoTextBoxDrawing

Route30BerryHouse_TextPointers:
	dw Route30BerryHouseText1
	dw Route30BerryHousePokemonText
	dw Route30BerryHouseTVText

Route30BerryHouseText1:
	text_asm
	CheckEvent EVENT_GOT_ROUTE_30_BERRY_GIFT
	jr nz, .got_item
	ld hl, .IntroductionText
	call PrintText
	lb bc, BERRY, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedItemText
	call PrintText
	SetEvent EVENT_GOT_ROUTE_30_BERRY_GIFT
	ld hl, .ItemExplanationText
	call PrintText
	jr .done
.bag_full
	ld hl, .ItemNoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, .ItemExplanationText
	call PrintText
.done
	jp TextScriptEnd

.IntroductionText
	text "Have you noticed"
	line "those fruit trees"
	cont "outside?"

	para "Well, my #MON"
	line "got healthier"

	para "from eating those"
	line "BERRIES."

	para "I'll share one"
	line "with you, too!"
	prompt

.ReceivedItemText
	text "<PLAYER> received"
	line "BERRY!@"
	sound_get_key_item
	text_waitbutton
	text_end

.ItemNoRoomText
	text "You have too much"
	line "stuff already…"
	done

.ItemExplanationText
	text "You can pick those"
	line "BERRIES over and"
	cont "over."

	para "They take time to"
	line "grow, though."

	para "Just walk around"
	line "for a bit, and"
	cont "check them again!"
	done

Route30BerryHousePokemonText:
	text "GEODUDE: GEOOOO!"
	done

Route30BerryHouseTVText:
	text_asm
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ld hl, .OopsWrongSideText
	jr nz, .got_text
	ld hl, .MovieText
.got_text
	call PrintText
	jp TextScriptEnd

.MovieText ; Fast Times
	text "There's a movie on"
	line "TV: A girl walks"
	cont "out of a swimming"
	cont "pool in a red"
	cont "swimsuit, while a"
	cont "New Wave song"
	cont "plays in the"
	cont "background."

	para "I'd better get"
	line "going too!"
	done

.OopsWrongSideText
	text "Oops, wrong side."
	done
