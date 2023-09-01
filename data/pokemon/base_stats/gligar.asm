	db GLIGAR ; pokedex id

	db 65, 75, 105, 85, 65
	;   hp  atk  def  spd  spc

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/gligar.pic", 0, 1 ; sprite dimensions
	dw GligarPicFront, GligarPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(GligarPicFront)
