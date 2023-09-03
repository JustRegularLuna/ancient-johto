	db SQUIRTLE ; pokedex id

	db  44,  48,  65,  43,  64
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp

	INCBIN "gfx/pokemon/gmon/squirtle.pic", 0, 1 ; sprite dimensions
	dw SquirtlePicFront, SquirtlePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SquirtlePicFront)
