	db STEELIX ; pokedex id

	db  75,  85, 200,  30,  65
	;   hp  atk  def  spd  spc

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/steelix.pic", 0, 1 ; sprite dimensions
	dw SteelixPicFront, SteelixPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SteelixPicFront)
