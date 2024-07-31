	db HO_OH ; pokedex id

	db 106, 130,  90,  90, 154
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/ho_oh.pic", 0, 1 ; sprite dimensions
	dw HoohPicFront, HoohPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(HoohPicFront)
