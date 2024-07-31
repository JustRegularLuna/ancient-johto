	db POLIKING ; pokedex id

	db  90,  75,  75,  70, 100
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/poliking.pic", 0, 1 ; sprite dimensions
	dw PolikingPicFront, PolikingPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(PolikingPicFront)
