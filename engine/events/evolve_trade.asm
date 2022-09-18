EvolveTradeMon:
	; originally had incorrectly translated checks for the first letters of the mon name
	; these were not necessary in the first place and were removed
	; any trade evo mon should be able to evolve correctly via NPC trade now
	ld a, [wPartyCount]
	dec a
	ld [wWhichPokemon], a
	ld a, $1
	ld [wForceEvolution], a
	ld a, LINK_STATE_TRADING
	ld [wLinkState], a
	callfar TryEvolvingMon
	xor a ; LINK_STATE_NONE
	ld [wLinkState], a
	jp PlayDefaultMusic
