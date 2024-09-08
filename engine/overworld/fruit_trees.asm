BerryTreeScript::
; Display the "It's a fruit-bearing tree." text
	call EnableAutoTextBoxDrawing
	ld hl, FruitTreeText
	call PrintText

; Check to see if the player can get a berry from this tree right now
	ld a, [wWhichTrade] ; Which tree is this?
	dec a
	ld c, a ; We need this in register c
	ld b, FLAG_TEST
	ld hl, wBerryTreeFlags
	predef FlagActionPredef
	ld a, c ; Let's get the result of that check
	and a ; Make sure the flag isn't set
	jp nz, .NothingHereScript ; If it is, you got the berry, so the tree is empty

; Time to give the berry
	ld a, [wWhichTrade]
	dec a
	ld c, a
	ld b, 0
	ld hl, FruitTreeItems
	add hl, bc
	ld a, [hl]
	ld b, a
	ld c, 1
	call GiveItem
	jr nc, .BagFull

; Mark the berry as taken
	ld a, [wWhichTrade] ; Which tree is this?
	dec a
	ld c, a ; We need this in c
	ld b, FLAG_SET
	ld hl, wBerryTreeFlags
	predef FlagActionPredef

; Show "Found (Berry Name)!" text
	ld hl, FoundBerryText
	jr .print

; Runs if the berry has already been taken from this tree
.NothingHereScript
	ld hl, NoBerryText
	jr .print

; Runs when the bag is full
.BagFull
	ld hl, PackFullText
.print
	call PrintText
	ret

FruitTreeText:
	text "It's a fruit-"
	line "bearing tree."
	prompt

NoBerryText:
	text "Looks like there's"
	line "nothing here."
	done

FoundBerryText:
	text_far _FoundItemText
	sound_get_item_1
	text_end

PackFullText:
	text_far _NoMoreRoomForItemText
	text_end

BerryReset::
; Called to reset berry trees
; Happens when the berry step counter hits 512
	ld a, [wBerryStepCounter + 1]
	cp a, $2
	ret nz
	xor a
	ld hl, wBerryTreeFlags
	; assumption: only 4 bytes used for flags
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	; assumption: Step Counter immediately follows Berry Tree Flags
	ld [hli], a
	ld [hl], a
	ret

INCLUDE "data/items/fruit_trees.asm"
