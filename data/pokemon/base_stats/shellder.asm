	db SHELLDER ; pokedex id

	db  30,  65, 100,  40,  45
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 97 ; base exp

	INCBIN "gfx/pokemon/gmon/shellder.pic", 0, 1 ; sprite dimensions
	dw ShellderPicFront, ShellderPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(ShellderPicFront)
