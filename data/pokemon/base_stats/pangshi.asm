	db PANGSHI ; pokedex id

	db  60,  50,  55,  55,  80
	;   hp  atk  def  spd  spc

	db GHOST, GHOST ; type
	db 255 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/pangshi.pic", 0, 1 ; sprite dimensions
	dw PangshiPicFront, PangshiPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(PangshiPicFront)
