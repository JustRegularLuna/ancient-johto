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


; Kansai Wild Pokémon

KansaiRoute1Mons: ; KANSAI_ROUTE_1
	def_grass_wildmons 25 ; encounter rate
	db  2, SENTRET
	db  3, SENTRET
	db  2, HOOTHOOT
	db  3, HOOTHOOT
	db  4, SENTRET
	db  4, HOOTHOOT
	db  2, RATTATA
	db  2, PIDGEY
	db  3, HOPPIP
	db  4, HOPPIP
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons



; Kanto Wild Pokémon
; TODO
