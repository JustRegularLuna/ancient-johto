	db UNOWN ; pokedex id

	db 48, 72, 48, 48, 72
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 225 ; catch rate
	db 61 ; base exp

	INCBIN "gfx/pokemon/gmon/unown.pic", 0, 1 ; sprite dimensions
	dw UnownPicFront, UnownPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(UnownPicFront)
