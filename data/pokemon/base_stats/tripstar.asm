	db TRIPSTAR ; pokedex id

	db  55,  35,  50,  85, 110
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 90 ; catch rate
	db 134 ; base exp

	INCBIN "gfx/pokemon/front/tripstar.pic", 0, 1 ; sprite dimensions
	dw TripstarPicFront, TripstarPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(TripstarPicFront)
