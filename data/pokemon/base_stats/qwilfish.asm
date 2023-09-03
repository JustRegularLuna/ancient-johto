	db QWILFISH ; pokedex id

	db 65, 95, 75, 85, 55
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 45 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/gmon/qwilfish.pic", 0, 1 ; sprite dimensions
	dw QwilfishPicFront, QwilfishPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(QwilfishPicFront)
