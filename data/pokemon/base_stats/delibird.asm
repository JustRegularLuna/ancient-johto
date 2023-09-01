	db DELIBIRD ; pokedex id

	db 45, 55, 45, 75, 65
	;   hp  atk  def  spd  spc

	db ICE, FLYING ; type
	db 45 ; catch rate
	db 183 ; base exp

	INCBIN "gfx/pokemon/front/delibird.pic", 0, 1 ; sprite dimensions
	dw DelibirdPicFront, DelibirdPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(DelibirdPicFront)
