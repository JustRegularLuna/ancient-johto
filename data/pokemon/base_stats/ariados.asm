	db ARIADOS ; pokedex id

	db 70, 90, 70, 40, 60
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 90 ; catch rate
	db 134 ; base exp

	INCBIN "gfx/pokemon/gmon/ariados.pic", 0, 1 ; sprite dimensions
	dw AriadosPicFront, AriadosPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(AriadosPicFront)
