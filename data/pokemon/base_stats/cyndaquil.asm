	db CYNDAQUIL ; pokedex id

	db 39, 52, 43, 65, 60
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp

	INCBIN "gfx/pokemon/front/cyndaquil.pic", 0, 1 ; sprite dimensions
	dw CyndaquilPicFront, CyndaquilPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(CyndaquilPicFront)
