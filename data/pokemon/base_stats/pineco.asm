	db PINECO ; pokedex id

	db 50, 65, 90, 15, 35
	;   hp  atk  def  spd  spc

	db BUG, BUG ; type
	db 190 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/pineco.pic", 0, 1 ; sprite dimensions
	dw PinecoPicFront, PinecoPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(PinecoPicFront)
