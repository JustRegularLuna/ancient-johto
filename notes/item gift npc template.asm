ExampleGiftNPCText:
	text_asm
	CheckEvent EVENT_GOT_SOME_ITEM
	jr nz, .got_item
	ld hl, .IntroductionText
	call PrintText
	lb bc, SOME_ITEM_ID_HERE, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedItemText
	call PrintText
	SetEvent EVENT_GOT_SOME_ITEM
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
	text "Yo I give items."
	prompt

.ReceivedItemText
	text "<PLAYER> received"
	line "SOME_ITEM!@"
	sound_get_key_item
	text_end

.ItemNoRoomText
	text "You have too much"
	line "stuff already."
	done

.ItemExplanationText
	text "That item does"
	line "something alright."
	done



SomeTextToUseSomewhere:
	text "I let some snot-"
	line "nosed punk leave"
	cont "my cheese out in"
	cont "the wind ONCE."

	para "Now everyone calls"
	line "me ED ROONEY…"
	done

SomeTVTextToUseSomewhere: ; Fast Times
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
