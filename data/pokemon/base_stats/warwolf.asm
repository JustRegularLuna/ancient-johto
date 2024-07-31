	db WARWOLF ; pokedex id

	db  90,  92,  75,  60,  92
	;   hp  atk  def  spd  spc

	db ICE, FIGHTING ; type
	db 60 ; catch rate
	db 214 ; base exp

	INCBIN "gfx/pokemon/front/warwolf.pic", 0, 1 ; sprite dimensions
	dw WarwolfPicFront, WarwolfPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(WarwolfPicFront)
