	db RINRING ; pokedex id

	db  35,  30,  35,  35,  55
	;   hp  atk  def  spd  spc

	db DARK, DARK ; type
	db 255 ; catch rate
	db 57 ; base exp

	INCBIN "gfx/pokemon/front/rinring.pic", 0, 1 ; sprite dimensions
	dw RinringPicFront, RinringPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(RinringPicFront)
