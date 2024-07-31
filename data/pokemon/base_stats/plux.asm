	db PLUX ; pokedex id

	db  75, 155, 120, 105,  90
	;   hp  atk  def  spd  spc

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/plux.pic", 0, 1 ; sprite dimensions
	dw PluxPicFront, PluxPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(PluxPicFront)
