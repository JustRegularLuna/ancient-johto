	db SPINARAK ; pokedex id

	db 40, 60, 40, 30, 40
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 255 ; catch rate
	db 54 ; base exp

	INCBIN "gfx/pokemon/gmon/spinarak.pic", 0, 1 ; sprite dimensions
	dw SpinarakPicFront, SpinarakPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SpinarakPicFront)
