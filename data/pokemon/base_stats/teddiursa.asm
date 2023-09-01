	db TEDDIURSA ; pokedex id

	db 60, 80, 50, 40, 50
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 120 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/front/teddiursa.pic", 0, 1 ; sprite dimensions
	dw TeddiursaPicFront, TeddiursaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(TeddiursaPicFront)
