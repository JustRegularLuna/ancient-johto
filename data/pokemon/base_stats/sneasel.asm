	db SNEASEL ; pokedex id

	db 55, 95, 55, 115, 75
	;   hp  atk  def  spd  spc

	db DARK, ICE ; type
	db 60 ; catch rate
	db 132 ; base exp

	INCBIN "gfx/pokemon/gmon/sneasel.pic", 0, 1 ; sprite dimensions
	dw SneaselPicFront, SneaselPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SneaselPicFront)
