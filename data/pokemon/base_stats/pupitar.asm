	db PUPITAR ; pokedex id

	db 70, 84, 70, 51, 70
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/gmon/pupitar.pic", 0, 1 ; sprite dimensions
	dw PupitarPicFront, PupitarPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(PupitarPicFront)
