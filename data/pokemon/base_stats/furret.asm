	db FURRET ; pokedex id

	db 85, 76, 64, 90, 55
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp

	INCBIN "gfx/pokemon/gmon/furret.pic", 0, 1 ; sprite dimensions
	dw FurretPicFront, FurretPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(FurretPicFront)
