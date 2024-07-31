	db SUNMOLA ; pokedex id

	db  50,  50,  50,  30,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 255 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/sunmola.pic", 0, 1 ; sprite dimensions
	dw SunmolaPicFront, SunmolaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SunmolaPicFront)
