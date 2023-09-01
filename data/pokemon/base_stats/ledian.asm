	db LEDIAN ; pokedex id

	db 55, 35, 50, 85, 110
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 90 ; catch rate
	db 134 ; base exp

	INCBIN "gfx/pokemon/front/ledian.pic", 0, 1 ; sprite dimensions
	dw LedianPicFront, LedianPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(LedianPicFront)
