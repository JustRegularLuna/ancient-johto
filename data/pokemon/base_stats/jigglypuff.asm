	db JIGGLYPUFF ; pokedex id

	db 115,  45,  20,  20,  45
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 170 ; catch rate
	db 76 ; base exp

	INCBIN "gfx/pokemon/gmon/jigglypuff.pic", 0, 1 ; sprite dimensions
	dw JigglypuffPicFront, JigglypuffPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(JigglypuffPicFront)
