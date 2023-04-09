; this function temporarily makes the starters (and Ivysaur) seen
; so that the full Pokedex information gets displayed in Oak's lab
StarterDex:
	ld a, 1 << (BULBASAUR - 1) | 1 << (IVYSAUR - 1) | 1 << (CHARMANDER - 1) | 1 << (SQUIRTLE - 1)
	ld [wPokedexOwned], a
	predef ShowPokedexData
	xor a
	ld [wPokedexOwned], a
	ret
