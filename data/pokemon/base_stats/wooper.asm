	db WOOPER ; pokedex id

	db 55, 45, 45, 15, 25
	;   hp  atk  def  spd  spc

	db WATER, GROUND ; type
	db 255 ; catch rate
	db 52 ; base exp

	INCBIN "gfx/pokemon/gmon/wooper.pic", 0, 1 ; sprite dimensions
	dw WooperPicFront, WooperPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(WooperPicFront)
