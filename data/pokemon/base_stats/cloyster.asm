	db CLOYSTER ; pokedex id

	db  50,  95, 180,  70,  85
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp

	INCBIN "gfx/pokemon/gmon/cloyster.pic", 0, 1 ; sprite dimensions
	dw CloysterPicFront, CloysterPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(CloysterPicFront)
