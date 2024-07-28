; Determine a Pokémon's gender based on its DVs
; This uses the same formula as Gen 2, so gender should match if you trade them forward via Time Capsule
; INPUTS - Mon DVs in de, species in wd11e
; OUTPUT - Mon's gender in wd11e
GetMonGender::
	;push de
	;predef IndexToPokedex
	;pop de
	ld a, [wd11e]
	dec a
	ld c, a
	ld b, 0
	ld hl, MonGenderRatios
	add hl, bc ; hl now points to the species gender ratio

; Attack DV
	ld a, [de]
	and $f0
	ld b, a
; Speed DV
	inc de
	ld a, [de]
	and $f0
	swap a
; Put them together
	or b
	ld b, a ; b now has the combined DVs

; Get the gender ratio
	ld a, [hl]

; Check for always one or another
	cp NO_GENDER
	jr z, .genderless

	cp FEMALE_ONLY
	jr z, .female

	and a ; MALE_ONLY
	jr z, .male

; Compare the ratio to the value we found earlier
	cp b
	jr c, .male

.female
	ld a, "♀" ; FEMALE
	jr .done
.male
	ld a, "♂" ; MALE
	jr .done
.genderless
	ld a, " " ; GENDERLESS
.done
	ld [wd11e], a
	ret

INCLUDE "data/pokemon/gender_ratios.asm"
