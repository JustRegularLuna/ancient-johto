	db MURKROW ; pokedex id

	db 60, 85, 42, 91, 85
	;   hp  atk  def  spd  spc

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 81 ; base exp

	INCBIN "gfx/pokemon/gmon/murkrow.pic", 0, 1 ; sprite dimensions
	dw MurkrowPicFront, MurkrowPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MurkrowPicFront)
