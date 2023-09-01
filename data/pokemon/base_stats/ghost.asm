	db MON_GHOST ; pokedex id

	db 100, 100, 100, 100, 100
	;   hp  atk  def  spd  spc

	db GHOST, DARK ; type
	db 1 ; catch rate
	db 1 ; base exp

	INCBIN "gfx/pokemon/other/ghost.pic", 0, 1 ; sprite dimensions
	dw GhostPic, MissingnoPic

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(GhostPic)
