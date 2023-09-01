	db IGGLYBUFF ; pokedex id

	db 90, 30, 15, 15, 40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 170 ; catch rate
	db 76 ; base exp

	INCBIN "gfx/pokemon/front/igglybuff.pic", 0, 1 ; sprite dimensions
	dw IgglybuffPicFront, IgglybuffPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(IgglybuffPicFront)
