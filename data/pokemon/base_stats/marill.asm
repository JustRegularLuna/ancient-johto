	db MARILL ; pokedex id

	db 70, 20, 50, 40, 50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 58 ; base exp

	INCBIN "gfx/pokemon/front/marill.pic", 0, 1 ; sprite dimensions
	dw MarillPicFront, MarillPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MarillPicFront)
