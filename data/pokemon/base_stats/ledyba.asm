	db LEDYBA ; pokedex id

	db  40,  20,  30,  55,  80
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp

	INCBIN "gfx/pokemon/front/ledyba.pic", 0, 1 ; sprite dimensions
	dw LedybaPicFront, LedybaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(LedybaPicFront)
