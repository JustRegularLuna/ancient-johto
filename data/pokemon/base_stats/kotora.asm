	db KOTORA ; pokedex id

	db  35,  55,  50,  70,  60
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp

	INCBIN "gfx/pokemon/front/kotora.pic", 0, 1 ; sprite dimensions
	dw KotoraPicFront, KotoraPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(KotoraPicFront)
