	db MAGCARGO ; pokedex id

	db 60, 50, 120, 30, 90
	;   hp  atk  def  spd  spc

	db FIRE, ROCK ; type
	db 75 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/magcargo.pic", 0, 1 ; sprite dimensions
	dw MagcargoPicFront, MagcargoPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MagcargoPicFront)
