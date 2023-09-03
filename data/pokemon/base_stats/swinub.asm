	db SWINUB ; pokedex id

	db 50, 50, 40, 50, 30
	;   hp  atk  def  spd  spc

	db ICE, GROUND ; type
	db 255 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/gmon/swinub.pic", 0, 1 ; sprite dimensions
	dw SwinubPicFront, SwinubPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SwinubPicFront)
