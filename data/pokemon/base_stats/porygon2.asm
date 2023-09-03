	db PORYGON2 ; pokedex id

	db 85, 80, 90, 60, 105
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 180 ; base exp

	INCBIN "gfx/pokemon/gmon/porygon2.pic", 0, 1 ; sprite dimensions
	dw Porygon2PicFront, Porygon2PicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(Porygon2PicFront)
