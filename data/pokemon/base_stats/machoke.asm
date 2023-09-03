	db MACHOKE ; pokedex id

	db  80, 100,  70,  45,  60
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 146 ; base exp

	INCBIN "gfx/pokemon/gmon/machoke.pic", 0, 1 ; sprite dimensions
	dw MachokePicFront, MachokePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MachokePicFront)
