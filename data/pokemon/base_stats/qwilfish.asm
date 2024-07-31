	db QWILFISH ; pokedex id

	db  55,  80,  50,  45,  60
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/qwilfish.pic", 0, 1 ; sprite dimensions
	dw QwilfishPicFront, QwilfishPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(QwilfishPicFront)
