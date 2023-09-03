	db GOLEM ; pokedex id

	db  80, 120, 130,  45,  65
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/gmon/golem.pic", 0, 1 ; sprite dimensions
	dw GolemPicFront, GolemPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(GolemPicFront)
