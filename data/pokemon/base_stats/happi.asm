	db HAPPI ; pokedex id

	db 255,  10,  10,  55, 135
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/happi.pic", 0, 1 ; sprite dimensions
	dw HappiPicFront, HappiPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(HappiPicFront)