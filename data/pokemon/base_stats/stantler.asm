	db STANTLER ; pokedex id

	db  73,  95,  62,  85,  85
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 165 ; base exp

	INCBIN "gfx/pokemon/front/stantler.pic", 0, 1 ; sprite dimensions
	dw StantlerPicFront, StantlerPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(StantlerPicFront)
