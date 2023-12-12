PlayBattleMusic::
	xor a
	ld [wMusicFade], a
	ld [wLowHealthAlarm], a
	dec a ; SFX_STOP_ALL_MUSIC
	call PlaySound
	call DelayFrame
	ld a, [wGymLeaderBattle]
	and a
	jr nz, .gymLeaderBattle
	ld a, [wIsTrainerBattle]
	and a
	jr z, .wildBattle
	ld a, [wCurOpponent]
	cp RIVAL1
	jr z, .rivalBattle
	cp RIVAL2
	jr z, .rivalBattle
	cp CHAMPION
	jr z, .finalBattle
	cp GIOVANNI
	jr z, .rocketBattle
	cp EXECUTIVEM
	jr z, .rocketBattle
	cp EXECUTIVEF
	jr z, .rocketBattle
	cp GRUNTM
	jr z, .rocketBattle
	cp GRUNTF
	jr z, .rocketBattle
	cp JESSIE_JAMES
	jr z, .rocketBattle
	cp SCIENTIST
	jr z, .rocketBattle
	cp RED
	jr z, .finalBattle
	cp LORELEI
	jr z, .retroBattle
	cp AGATHA
	jr z, .retroBattle
.normalTrainerBattle
	ld a, [wCurRegion]
	and a ; Kanto?
	ld a, MUSIC_KANTO_TRAINER_BATTLE
	jr z, .playSong
	; Else Johto
	ld a, MUSIC_JOHTO_TRAINER_BATTLE
	jr .playSong
.gymLeaderBattle
	ld a, [wCurRegion]
	and a ; Kanto?
	ld a, MUSIC_KANTO_GYM_LEADER_BATTLE
	jr z, .playSong
	; Else Johto
	ld a, MUSIC_JOHTO_GYM_LEADER_BATTLE
	jr .playSong
.wildBattle
	ld a, [wCurRegion]
	and a ; Kanto?
	ld a, MUSIC_KANTO_WILD_BATTLE
	jr z, .playSong
	; Else Johto
	ld a, MUSIC_JOHTO_WILD_BATTLE
	jr .playSong
.rivalBattle
	ld a, MUSIC_RIVAL_BATTLE
	jr .playSong
.rocketBattle
	ld a, MUSIC_ROCKET_BATTLE
	jr .playSong
.retroBattle
	ld a, MUSIC_RETRO_BATTLE
	jr .playSong
.finalBattle
	ld a, MUSIC_FINAL_BATTLE
.playSong
	jp PlayMusic
