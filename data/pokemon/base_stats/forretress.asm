	db FORRETRESS ; pokedex id

	db 75, 90, 140, 40, 60
	;   hp  atk  def  spd  spc

	db BUG, STEEL ; type
	db 75 ; catch rate
	db 75 ; base exp

	INCBIN "gfx/pokemon/gmon/forretress.pic", 0, 1 ; sprite dimensions
	dw ForretressPicFront, ForretressPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(ForretressPicFront)
