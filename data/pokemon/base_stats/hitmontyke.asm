	db HITMONTYKE ; pokedex id

	db  35,  35,  35,  35,  35
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 91 ; base exp

	INCBIN "gfx/pokemon/front/hitmontyke.pic", 0, 1 ; sprite dimensions
	dw HitmontykePicFront, HitmontykePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(HitmontykePicFront)
