	db BELLMITT ; pokedex id

	db  80, 100,  65,  70, 105
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 191 ; base exp

	INCBIN "gfx/pokemon/front/bellmitt.pic", 0, 1 ; sprite dimensions
	dw BellmittPicFront, BellmittPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(BellmittPicFront)
