	db SUDOWOODO ; pokedex id

	db 70, 100, 115, 30, 65
	;   hp  atk  def  spd  spc

	db ROCK, ROCK ; type
	db 65 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/sudowoodo.pic", 0, 1 ; sprite dimensions
	dw SudowoodoPicFront, SudowoodoPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SudowoodoPicFront)
