GetTrainerInformation::
	call GetTrainerName
	ld a, [wLinkState]
	and a
	jr nz, .linkBattle
	ld a, BANK(TrainerPicAndMoneyPointers)
	call BankswitchHome
	ld a, [wTrainerClass]
	dec a
	ld hl, TrainerPicAndMoneyPointers
	ld bc, $6
	call AddNTimes
	ld de, wTrainerPicBank
	ld a, [hli]
	ld [de], a
	inc de ; ld de, wTrainerPicPointer
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld de, wTrainerBaseMoney
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	jp BankswitchBack
.linkBattle
	ld a, BANK(ChrisPicFront)
	ld [wTrainerPicBank], a
	ld hl, wTrainerPicPointer
	ld de, ChrisPicFront
	ld [hl], e
	inc hl
	ld [hl], d
	ret

GetTrainerName::
	farjp GetTrainerName_
