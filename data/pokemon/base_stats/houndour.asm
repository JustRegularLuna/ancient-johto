	db HOUNDOUR ; pokedex id

	db 45, 60, 30, 65, 80
	;   hp  atk  def  spd  spc

	db DARK, FIRE ; type
	db 190 ; catch rate
	db 91 ; base exp

	INCBIN "gfx/pokemon/gmon/houndour.pic", 0, 1 ; sprite dimensions
	dw HoundourPicFront, HoundourPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(HoundourPicFront)
