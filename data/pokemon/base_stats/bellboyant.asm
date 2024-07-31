	db BELLBOYANT ; pokedex id

	db  70,  60,  70,  70,  90
	;   hp  atk  def  spd  spc

	db DARK, DARK ; type
	db 255 ; catch rate
	db 57 ; base exp

	INCBIN "gfx/pokemon/front/bellboyant.pic", 0, 1 ; sprite dimensions
	dw BellboyantPicFront, BellboyantPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(BellboyantPicFront)
