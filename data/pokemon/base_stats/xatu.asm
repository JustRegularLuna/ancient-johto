	db XATU ; pokedex id

	db  65,  75,  70,  95,  95
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FLYING ; type
	db 75 ; catch rate
	db 171 ; base exp

	INCBIN "gfx/pokemon/front/xatu.pic", 0, 1 ; sprite dimensions
	dw XatuPicFront, XatuPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(XatuPicFront)
