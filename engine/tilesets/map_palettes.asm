_LoadOverworldAttrmapPals::
; Load wAttrmap palette numbers based on the tileset palettes of current map.
; This function is only used for the initial loading of the map; incremental
; loads while moving happen through ScrollBGMapPalettes.
	hlcoord 0, 0
	decoord 0, 0, wAttrmap
	ld b, SCREEN_HEIGHT
.loop
	ld c, SCREEN_WIDTH
.innerloop
	xor a
.next
	ld [de], a
	inc de
	dec c
	jr nz, .innerloop
	dec b
	jr nz, .loop
	ret

_ScrollBGMapPalettes::
	ld hl, wBGMapBuffer
	ld de, wBGMapPalBuffer
.loop
	xor a
.next
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ret
