	db MUK ; pokedex id

	db 105, 105,  75,  50, 100
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 75 ; catch rate
	db 157 ; base exp

	INCBIN "gfx/pokemon/gmon/muk.pic", 0, 1 ; sprite dimensions
	dw MukPicFront, MukPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MukPicFront)
