	db AQUARIA ; pokedex id

	db  79,  83, 100,  78, 105
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/aquaria.pic", 0, 1 ; sprite dimensions
	dw AquariaPicFront, AquariaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(AquariaPicFront)
