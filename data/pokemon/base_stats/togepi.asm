	db TOGEPI ; pokedex id

	db 35, 20, 65, 20, 65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/gmon/togepi.pic", 0, 1 ; sprite dimensions
	dw TogepiPicFront, TogepiPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(TogepiPicFront)
