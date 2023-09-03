	db SHUCKLE ; pokedex id

	db 20, 10, 230, 5, 230
	;   hp  atk  def  spd  spc

	db BUG, ROCK ; type
	db 190 ; catch rate
	db 80 ; base exp

	INCBIN "gfx/pokemon/gmon/shuckle.pic", 0, 1 ; sprite dimensions
	dw ShucklePicFront, ShucklePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(ShucklePicFront)
