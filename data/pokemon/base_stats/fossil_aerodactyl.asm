	db FOSSIL_AERODACTYL ; pokedex id

	db 100, 100, 100, 100, 100
	;   hp  atk  def  spd  spc

	db GHOST, ROCK ; type
	db 1 ; catch rate
	db 1 ; base exp

	INCBIN "gfx/pokemon/other/fossilaerodactyl.pic", 0, 1 ; sprite dimensions
	dw FossilAerodactylPic, MissingnoPic

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(FossilAerodactylPic)
