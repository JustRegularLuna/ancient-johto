	db HOUNDOOM ; pokedex id

	db 75, 90, 50, 95, 110
	;   hp  atk  def  spd  spc

	db DARK, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp

	INCBIN "gfx/pokemon/gmon/houndoom.pic", 0, 1 ; sprite dimensions
	dw HoundoomPicFront, HoundoomPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(HoundoomPicFront)
