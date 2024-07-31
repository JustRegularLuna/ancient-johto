	db AQUA ; pokedex id

	db  59,  63,  80,  58,  80
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp

	INCBIN "gfx/pokemon/front/aqua.pic", 0, 1 ; sprite dimensions
	dw AquaPicFront, AquaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(AquaPicFront)
