	db MANKEY ; pokedex id

	db  40,  80,  35,  70,  45
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/gmon/mankey.pic", 0, 1 ; sprite dimensions
	dw MankeyPicFront, MankeyPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MankeyPicFront)
