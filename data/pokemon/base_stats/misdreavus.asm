	db MISDREAVUS ; pokedex id

	db 60, 60, 60, 85, 85
	;   hp  atk  def  spd  spc

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 147 ; base exp

	INCBIN "gfx/pokemon/gmon/misdreavus.pic", 0, 1 ; sprite dimensions
	dw MisdreavusPicFront, MisdreavusPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MisdreavusPicFront)
