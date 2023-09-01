	db MEGANIUM ; pokedex id

	db 80, 82, 100, 80, 100
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 208 ; base exp

	INCBIN "gfx/pokemon/front/meganium.pic", 0, 1 ; sprite dimensions
	dw MeganiumPicFront, MeganiumPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MeganiumPicFront)
