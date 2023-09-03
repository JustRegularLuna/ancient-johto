	db MAREEP ; pokedex id

	db 55, 40, 40, 35, 65
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 235 ; catch rate
	db 59 ; base exp

	INCBIN "gfx/pokemon/gmon/mareep.pic", 0, 1 ; sprite dimensions
	dw MareepPicFront, MareepPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MareepPicFront)
