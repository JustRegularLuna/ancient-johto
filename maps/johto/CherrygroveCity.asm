; text constants
	const_def 1
	; NPCs
	const_export CHERRYGROVE_RIVAL
	const_export CHERRYGROVE_ISLAND_GUY
	const_export CHERRYGROVE_LASS
	const_export CHERRYGROVE_GUY
	; Signs
	const CHERRYGROVE_CITY_SIGN
	const CHERRYGROVE_GUIDE_GENT_SIGN

CherrygroveCity_Object:
	db $35 ; border block

	def_warps
	warp 29,  3, 0, CHERRYGROVE_POKECENTER
	warp 23,  3, 0, CHERRYGROVE_MART
	warp 17,  7, 0, CHERRYGROVE_HOUSE_1
	warp 25,  9, 0, CHERRYGROVE_HOUSE_2
	warp 31, 11, 0, CHERRYGROVE_HOUSE_3

	def_signs
	sign 30,  8, CHERRYGROVE_CITY_SIGN
	sign 23,  9, CHERRYGROVE_GUIDE_GENT_SIGN

	def_objects
	object SPRITE_RIVAL, 38,  6, STAY, LEFT, CHERRYGROVE_RIVAL
	object SPRITE_FISHER,  5, 12, STAY, DOWN, CHERRYGROVE_ISLAND_GUY
	object SPRITE_LASS, 21, 11, WALK, LEFT_RIGHT, CHERRYGROVE_LASS
	object SPRITE_YOUNGSTER, 11,  7, STAY, LEFT, CHERRYGROVE_GUY

	def_warps_to CHERRYGROVE_CITY


CherrygroveCity_Script:
	jp EnableAutoTextBoxDrawing

CherrygroveCity_TextPointers:
	dw CherrygroveCityText1
	dw CherrygroveIslandGuyText
	dw CherrygroveLassText
	dw CherrygroveGuyText
	dw CherrygroveCitySignText
	dw CherrygroveGuideGentSignText

CherrygroveCityText1:
	text "!"
	done

CherrygroveIslandGuyText:
	text_asm
	CheckEvent EVENT_GOT_CHERRYGROVE_KINGS_ROCK
	jr nz, .got_item
	ld hl, .IntroductionText
	call PrintText
	lb bc, KINGS_ROCK, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedItemText
	call PrintText
	SetEvent EVENT_GOT_CHERRYGROVE_KINGS_ROCK
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
	text "I found a strange"
	line "rock on the beach"
	cont "here."

	para "It almost looks"
	line "like a crown!"

	para "I don't have much"
	line "use for it, so"
	cont "I'll let you have"
	cont "it."
	prompt

.ReceivedItemText
	text "<PLAYER> received"
	line "KINGS ROCK!@"
	sound_get_key_item
	text_end

.ItemNoRoomText
	text "You have too much"
	line "stuff already."
	done

.ItemExplanationText
	text "Maybe you can let"
	line "a #MON wear"
	cont "that KINGS ROCK."

	para "It would make it"
	line "look regal!"
	done

CherrygroveLassText:
	text "Have you been to"
	line "the GUIDE GENT's"
	cont "house yet?"

	para "He'll give you a"
	line "map of the JOHTO"
	cont "region for free!"
	done

CherrygroveGuyText:
	text "Sometimes I sit"
	line "and watch the"
	cont "ocean like this."

	para "I wonder what all"
	line "there is to dis-"
	cont "cover out there?"
	done

CherrygroveCitySignText:
	text "CHERRYGROVE CITY"

	para "The city of cute"
	line "fragrant flowers."
	done

CherrygroveGuideGentSignText:
	text "GUIDE GENT's HOUSE"
	done
