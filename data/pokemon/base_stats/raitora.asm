	db RAITORA ; pokedex id

	db  60,  90,  65,  90, 100
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/raitora.pic", 0, 1 ; sprite dimensions
	dw RaitoraPicFront, RaitoraPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(RaitoraPicFront)
