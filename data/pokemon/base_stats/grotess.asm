	db GROTESS ; pokedex id

	db  90,  55, 110,  50, 110
	;   hp  atk  def  spd  spc

	db WATER, DRAGON ; type
	db 255 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/grotess.pic", 0, 1 ; sprite dimensions
	dw GrotessPicFront, GrotessPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(GrotessPicFront)
