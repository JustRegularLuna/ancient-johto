	db NUMPUFF ; pokedex id

	db  65,  95,  85,  85, 100
	;   hp  atk  def  spd  spc

	db WATER, ELECTRIC ; type
	db 45 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/numpuff.pic", 0, 1 ; sprite dimensions
	dw NumpuffPicFront, NumpuffPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(NumpuffPicFront)
