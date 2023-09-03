	db MAGMAR ; pokedex id

	db  65,  95,  57,  93, 100
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp

	INCBIN "gfx/pokemon/gmon/magmar.pic", 0, 1 ; sprite dimensions
	dw MagmarPicFront, MagmarPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MagmarPicFront)
