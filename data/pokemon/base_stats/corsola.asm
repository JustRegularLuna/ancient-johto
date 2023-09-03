	db CORSOLA ; pokedex id

	db 55, 55, 85, 35, 85
	;   hp  atk  def  spd  spc

	db WATER, ROCK ; type
	db 60 ; catch rate
	db 113 ; base exp

	INCBIN "gfx/pokemon/gmon/corsola.pic", 0, 1 ; sprite dimensions
	dw CorsolaPicFront, CorsolaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(CorsolaPicFront)
