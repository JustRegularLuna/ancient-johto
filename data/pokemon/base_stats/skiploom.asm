	db SKIPLOOM ; pokedex id

	db 55, 45, 50, 80, 65
	;   hp  atk  def  spd  spc

	db GRASS, FLYING ; type
	db 120 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/gmon/skiploom.pic", 0, 1 ; sprite dimensions
	dw SkiploomPicFront, SkiploomPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SkiploomPicFront)
