	db HOPPIP ; pokedex id

	db 35, 35, 40, 50, 55
	;   hp  atk  def  spd  spc

	db GRASS, FLYING ; type
	db 255 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/gmon/hoppip.pic", 0, 1 ; sprite dimensions
	dw HoppipPicFront, HoppipPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(HoppipPicFront)
