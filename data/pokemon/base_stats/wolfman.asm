	db WOLFMAN ; pokedex id

	db  60,  62,  50,  40,  62
	;   hp  atk  def  spd  spc

	db ICE, FIGHTING ; type
	db 120 ; catch rate
	db 131 ; base exp

	INCBIN "gfx/pokemon/front/wolfman.pic", 0, 1 ; sprite dimensions
	dw WolfmanPicFront, WolfmanPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(WolfmanPicFront)
