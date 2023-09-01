	db RAIKOU ; pokedex id

	db 90, 85, 75, 115, 115
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 3 ; catch rate
	db 216 ; base exp

	INCBIN "gfx/pokemon/front/raikou.pic", 0, 1 ; sprite dimensions
	dw RaikouPicFront, RaikouPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(RaikouPicFront)
