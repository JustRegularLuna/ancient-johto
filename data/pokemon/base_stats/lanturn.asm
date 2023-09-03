	db LANTURN ; pokedex id

	db 125, 58, 58, 67, 76
	;   hp  atk  def  spd  spc

	db WATER, ELECTRIC ; type
	db 75 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/gmon/lanturn.pic", 0, 1 ; sprite dimensions
	dw LanturnPicFront, LanturnPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(LanturnPicFront)
