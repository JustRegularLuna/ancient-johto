	db TOGETIC ; pokedex id

	db 55, 40, 85, 40, 105
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 75 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/gmon/togetic.pic", 0, 1 ; sprite dimensions
	dw TogeticPicFront, TogeticPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(TogeticPicFront)
