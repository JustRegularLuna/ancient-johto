	db CLEFFA ; pokedex id

	db 50, 25, 28, 15, 55
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 150 ; catch rate
	db 68 ; base exp

	INCBIN "gfx/pokemon/gmon/cleffa.pic", 0, 1 ; sprite dimensions
	dw CleffaPicFront, CleffaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(CleffaPicFront)
