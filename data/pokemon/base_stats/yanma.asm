	db YANMA ; pokedex id

	db 65, 65, 45, 95, 75
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 75 ; catch rate
	db 147 ; base exp

	INCBIN "gfx/pokemon/front/yanma.pic", 0, 1 ; sprite dimensions
	dw YanmaPicFront, YanmaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(YanmaPicFront)
