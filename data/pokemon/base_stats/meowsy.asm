	db MEOWSY ; pokedex id

	db  25,  30,  20,  60,  25
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp

	INCBIN "gfx/pokemon/front/meowsy.pic", 0, 1 ; sprite dimensions
	dw MeowsyPicFront, MeowsyPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MeowsyPicFront)
