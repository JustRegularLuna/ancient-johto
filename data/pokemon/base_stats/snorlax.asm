	db SNORLAX ; pokedex id

	db 160, 110,  65,  30, 110
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/gmon/snorlax.pic", 0, 1 ; sprite dimensions
	dw SnorlaxPicFront, SnorlaxPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SnorlaxPicFront)
