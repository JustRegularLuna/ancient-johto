	db HERACROSS ; pokedex id

	db 80, 125, 75, 85, 95
	;   hp  atk  def  spd  spc

	db BUG, FIGHTING ; type
	db 75 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/heracross.pic", 0, 1 ; sprite dimensions
	dw HeracrossPicFront, HeracrossPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(HeracrossPicFront)
