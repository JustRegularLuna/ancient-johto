	db BELLOSSOM ; pokedex id

	db 75, 80, 95, 50, 100
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/gmon/bellossom.pic", 0, 1 ; sprite dimensions
	dw BellossomPicFront, BellossomPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(BellossomPicFront)
