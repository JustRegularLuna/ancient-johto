	db SLOWKING ; pokedex id

	db 95, 75, 80, 30, 110
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 70 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/gmon/slowking.pic", 0, 1 ; sprite dimensions
	dw SlowkingPicFront, SlowkingPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SlowkingPicFront)
