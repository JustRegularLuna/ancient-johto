	db KURSTRAW ; pokedex id

	db  55,  40,  50,  45,  75
	;   hp  atk  def  spd  spc

	db GHOST, GHOST ; type
	db 255 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/kurstraw.pic", 0, 1 ; sprite dimensions
	dw KurstrawPicFront, KurstrawPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(KurstrawPicFront)
