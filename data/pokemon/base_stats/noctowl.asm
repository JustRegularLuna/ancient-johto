	db NOCTOWL ; pokedex id

	db 100, 50, 50, 70, 96
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp

	INCBIN "gfx/pokemon/front/noctowl.pic", 0, 1 ; sprite dimensions
	dw NoctowlPicFront, NoctowlPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(NoctowlPicFront)
