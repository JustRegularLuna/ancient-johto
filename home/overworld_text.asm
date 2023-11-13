TextScriptEndingText::
	text_end

TextScriptEnd::
	ld hl, TextScriptEndingText
	ret

ExclamationText::
	text_far _ExclamationText
	text_end

GroundRoseText::
	text_far _GroundRoseText
	text_end

BoulderText::
	text_far _BoulderText
	; expanded for Field Move hack
	text_asm
	ld a, [wJohtoBadges]
	bit BIT_PLAINBADGE, a
	jr z, .done

	ld d, STRENGTH
	farcall HasPartyMove
	ld a, [wWhichTrade]
	and a
	jr nz, .done

	ld a, [wWhichPokemon]
	push af
	call ManualTextScroll
	pop af
	ld [wWhichPokemon], a
	call GetPartyMonName2
	predef PrintStrengthTxt

.done
	jp TextScriptEnd

MartSignText::
	text_far _MartSignText
	text_end

PokeCenterSignText::
	text_far _PokeCenterSignText
	text_end

PickUpItemText::
	text_asm
	predef PickUpItem
	jp TextScriptEnd
