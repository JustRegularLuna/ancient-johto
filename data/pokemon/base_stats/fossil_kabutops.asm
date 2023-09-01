	db FOSSIL_KABUTOPS ; pokedex id

	db 100, 100, 100, 100, 100
	;   hp  atk  def  spd  spc

	db GHOST, ROCK ; type
	db 1 ; catch rate
	db 1 ; base exp

	INCBIN "gfx/pokemon/other/fossilkabutops.pic", 0, 1 ; sprite dimensions
	dw FossilKabutopsPic, MissingnoPic

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(FossilKabutopsPic)
