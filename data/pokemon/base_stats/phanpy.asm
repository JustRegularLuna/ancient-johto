	db PHANPY ; pokedex id

	db 90, 60, 60, 40, 40
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 120 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/gmon/phanpy.pic", 0, 1 ; sprite dimensions
	dw PhanpyPicFront, PhanpyPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(PhanpyPicFront)
