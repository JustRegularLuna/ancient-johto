	db JUMPLUFF ; pokedex id

	db 75, 55, 70, 110, 85
	;   hp  atk  def  spd  spc

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 176 ; base exp

	INCBIN "gfx/pokemon/gmon/jumpluff.pic", 0, 1 ; sprite dimensions
	dw JumpluffPicFront, JumpluffPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(JumpluffPicFront)
