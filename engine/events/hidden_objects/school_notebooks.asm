PrintNotebookText:
	call EnableAutoTextBoxDrawing
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, [wHiddenObjectFunctionArgument]
	jp PrintPredefTextID

TMNotebook::
	text_far TMNotebookText
	text_waitbutton
	text_end

PokemonSchoolNotebook::
	text_asm
	ld hl, PokemonSchoolNotebookText1
	call PrintText
	call TurnPageSchoolNotebook
	jr nz, .doneReading
	ld hl, PokemonSchoolNotebookText2
	call PrintText
	call TurnPageSchoolNotebook
	jr nz, .doneReading
	ld hl, PokemonSchoolNotebookText3
	call PrintText
	call TurnPageSchoolNotebook
	jr nz, .doneReading
	ld hl, PokemonSchoolNotebookText4
	call PrintText
	ld hl, PokemonSchoolNotebookText5
	call PrintText
.doneReading
	jp TextScriptEnd

TurnPageSchoolNotebook:
	ld hl, TurnPageText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ret

TurnPageText:
	text_far _TurnPageText
	text_end

PokemonSchoolNotebookText5:
	text_far _PokemonSchoolNotebookText5
	text_waitbutton
	text_end

PokemonSchoolNotebookText1:
	text_far _PokemonSchoolNotebookText1
	text_end

PokemonSchoolNotebookText2:
	text_far _PokemonSchoolNotebookText2
	text_end

PokemonSchoolNotebookText3:
	text_far _PokemonSchoolNotebookText3
	text_end

PokemonSchoolNotebookText4:
	text_far _PokemonSchoolNotebookText4
	text_end
