	db GROWLIE ; pokedex id

	db  40,  55,  30,  45,  55
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 91 ; base exp

	INCBIN "gfx/pokemon/front/growlie.pic", 0, 1 ; sprite dimensions
	dw GrowliePicFront, GrowliePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(GrowliePicFront)
