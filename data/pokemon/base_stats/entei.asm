	db ENTEI ; pokedex id

	db 115, 115, 85, 100, 90
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 3 ; catch rate
	db 217 ; base exp

	INCBIN "gfx/pokemon/front/entei.pic", 0, 1 ; sprite dimensions
	dw EnteiPicFront, EnteiPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(EnteiPicFront)
