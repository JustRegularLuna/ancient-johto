	db TWINZ ; pokedex id

	db  60,  60,  60,  70,  70
	;   hp  atk  def  spd  spc

	db DARK, GHOST ; type
	db 60 ; catch rate
	db 149 ; base exp

	INCBIN "gfx/pokemon/front/twinz.pic", 0, 1 ; sprite dimensions
	dw TwinzPicFront, TwinzPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(TwinzPicFront)
