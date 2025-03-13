_Squirtbottle:
	;ld hl, .SquirtbottleScript
	;call QueueScript
	ld a, $1
	ld [wItemEffectSucceeded], a
	ret

.SquirtbottleScript:
	;refreshmap
	;special UpdateTimePals
	;callasm .CheckCanUseSquirtbottle
	;iffalse .SquirtbottleNothingScript
	;farsjump WateredWeirdTreeScript

.SquirtbottleNothingScript:
	;jumptext .SquirtbottleNothingText

.SquirtbottleNothingText:
	;text_far _SquirtbottleNothingText
	;text_end

.CheckCanUseSquirtbottle:
	;ld a, [wMapGroup]
	;cp GROUP_N_A
	;jr nz, .nope

	;ld a, [wMapNumber]
	;cp MAP_N_A
	;jr nz, .nope

	;farcall GetFacingObject
	;jr c, .nope

	;ld a, d
	;cp SPRITEMOVEDATA_SUDOWOODO
	;jr nz, .nope

	;ld a, 1
	;ld [wScriptVar], a
	;ret

.nope
	;xor a
	;ld [wScriptVar], a
	;ret
