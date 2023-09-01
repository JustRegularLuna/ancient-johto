	db TOTODILE ; pokedex id

	db 50, 65, 64, 43, 48
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp

	INCBIN "gfx/pokemon/front/totodile.pic", 0, 1 ; sprite dimensions
	dw TotodilePicFront, TotodilePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(TotodilePicFront)
