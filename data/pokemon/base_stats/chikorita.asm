	db CHIKORITA ; pokedex id

	db 45, 49, 65, 45, 65
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/gmon/chikorita.pic", 0, 1 ; sprite dimensions
	dw ChikoritaPicFront, ChikoritaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(ChikoritaPicFront)
