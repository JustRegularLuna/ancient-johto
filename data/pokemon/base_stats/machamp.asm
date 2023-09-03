	db MACHAMP ; pokedex id

	db  90, 130,  80,  55,  85
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 193 ; base exp

	INCBIN "gfx/pokemon/gmon/machamp.pic", 0, 1 ; sprite dimensions
	dw MachampPicFront, MachampPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MachampPicFront)
