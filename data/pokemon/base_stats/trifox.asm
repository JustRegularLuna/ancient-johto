	db TRIFOX ; pokedex id

	db  23,  26,  25,  40,  45
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp

	INCBIN "gfx/pokemon/front/trifox.pic", 0, 1 ; sprite dimensions
	dw TrifoxPicFront, TrifoxPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(TrifoxPicFront)
