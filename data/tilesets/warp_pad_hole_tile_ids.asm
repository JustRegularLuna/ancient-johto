WarpPadAndHoleData:
	; tileset id, tile id, value for [wStandingOnWarpPadOrHole]
	db FACILITY,        $20, 1 ; warp pad
	db FACILITY,        $11, 2 ; hole
	db CAVERN,          $22, 2 ; hole
	db INTERIOR,        $55, 1 ; warp pad
	db JOHTO_CAVE,      $10, 2 ; hole
	db ELITE_FOUR_ROOM, $0F, 2 ; hole
	db TOWER,           $01, 1 ; warp pad
	db TOWER,           $10, 2 ; hole
	db -1 ; end
