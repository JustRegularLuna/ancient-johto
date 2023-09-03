	db VICTREEBEL ; pokedex id

	db  80, 105,  65,  70, 100
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 191 ; base exp

	INCBIN "gfx/pokemon/gmon/victreebel.pic", 0, 1 ; sprite dimensions
	dw VictreebelPicFront, VictreebelPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(VictreebelPicFront)
