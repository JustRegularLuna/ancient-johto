	db ELEKID ; pokedex id

	db 45, 63, 37, 95, 65
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/elekid.pic", 0, 1 ; sprite dimensions
	dw ElekidPicFront, ElekidPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(ElekidPicFront)
