	db DUNSPARCE ; pokedex id

	db 100, 70, 70, 45, 65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 75 ; base exp

	INCBIN "gfx/pokemon/gmon/dunsparce.pic", 0, 1 ; sprite dimensions
	dw DunsparcePicFront, DunsparcePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(DunsparcePicFront)
