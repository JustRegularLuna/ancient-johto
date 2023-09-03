	db QUILAVA ; pokedex id

	db 58, 64, 58, 80, 80
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp

	INCBIN "gfx/pokemon/gmon/quilava.pic", 0, 1 ; sprite dimensions
	dw QuilavaPicFront, QuilavaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(QuilavaPicFront)
