	db EKANS ; pokedex id

	db  35,  60,  44,  55,  54
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp

	INCBIN "gfx/pokemon/gmon/ekans.pic", 0, 1 ; sprite dimensions
	dw EkansPicFront, EkansPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(EkansPicFront)
