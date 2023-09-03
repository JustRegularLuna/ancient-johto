	db TYRANITAR ; pokedex id

	db 100, 134, 110, 61, 100
	;   hp  atk  def  spd  spc

	db ROCK, DARK ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/gmon/tyranitar.pic", 0, 1 ; sprite dimensions
	dw TyranitarPicFront, TyranitarPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(TyranitarPicFront)
