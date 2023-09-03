	db REMORAID ; pokedex id

	db 35, 65, 35, 65, 65
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/gmon/remoraid.pic", 0, 1 ; sprite dimensions
	dw RemoraidPicFront, RemoraidPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(RemoraidPicFront)
