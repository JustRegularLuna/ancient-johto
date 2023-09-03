	db NIDORINO ; pokedex id

	db  61,  72,  57,  65,  55
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 120 ; catch rate
	db 118 ; base exp

	INCBIN "gfx/pokemon/gmon/nidorino.pic", 0, 1 ; sprite dimensions
	dw NidorinoPicFront, NidorinoPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(NidorinoPicFront)
