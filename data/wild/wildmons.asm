; wild pokemon data is divided into two parts.
; first part:  pokemon found in grass
; second part: pokemon found while surfing
; each part goes as follows:
    ; if first byte == 0, then
        ; no wild pokemon on this map
    ; if first byte != 0, then
        ; first byte is encounter rate
        ; followed by 20 bytes:
        ; level, species (ten times)


NoMons: ; All maps with no wild encounters use this table
	def_grass_wildmons 0 ; encounter rate
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons


; Johto Wild Pokémon

Route29Mons: ; ROUTE_29
	def_grass_wildmons 25 ; encounter rate
	db  3, CATERPIE
	db  3, WEEDLE
	db  3, CATERPIE
	db  2, WEEDLE
	db  2, GEODUDE
	db  3, PIKACHU
	db  3, PIDGEY
	db  4, RATTATA
	db  4, CLEFAIRY
	db  5, JIGGLYPUFF
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons


; Kanto Wild Pokémon
; TODO
