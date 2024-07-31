	db BOMSEEL ; pokedex id

	db  90,  80,  80,  95, 105
	;   hp  atk  def  spd  spc

	db WATER, FIRE ; type
	db 60 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/bomseel.pic", 0, 1 ; sprite dimensions
	dw BomseelPicFront, BomseelPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(BomseelPicFront)
