SetWorkingDir %A_ScriptDir%
switch=0 ;Used to facilitate toggling hotkey status
;The following line reads from the numpad-keys.ini file
IniRead, myTime, numpad-keys.ini, Options, myTime
;If the ini file does not exist a reminder beep every 30 seconds is set
IfNotExist numpad-keys.ini
{
	myTime = 3 ;The default   item in the duration listbox
}
Gosub, helpMe ;Reveals the opening page
; following are remapped keys and so on
NumpadEnd::c
NumpadDown::d
NumpadPgDn::e
NumpadLeft::d
NumpadClear::g
NumpadRight::a
NumpadAdd::b
numpadEnter::Space
numpadIns::Send es
>+NumpadIns::R
>+NumpadEnd::SendRaw 1
>+NumpadDown::SendRaw 2
>+NumpadPgDn::sendRaw 4
>+NumpadLeft::sendRaw 8
>+NumpadClear::SendRaw 16
>+NumpadRight::SendRaw 32
>+NumpadHome::SendRaw 64
>+NumpadUp::SendRaw .
>+NumpadPgUp::SendRaw -. 
NumpadHome::~
NumpadUp::r
NumpadPgUp::Send is
NumpadSub::SendRaw '
>+NumpadAdd::
	KeyWait, Shift, T0.5
	Send <>{left}
	return
>+NumpadSub::
	KeyWait, Shift, T0.5
	Send, {,}
	return
>+NumpadDiv::
	KeyWait, Shift, T0.5
	SendRaw (
	return
>+NumpadMult::
	KeyWait, Shift, T0.5
	SendRaw )
	return

#z::
Suspend, Toggle ;Windows-z Toggles hot keys on or off
SetTimer, remindMe, off
If switch=0
{
	switch=1 ;Hotkeys on when switch = 0 and off when 1
	;The following 3 lines play a 300hz tone for 300milliseconds, waits for 50 milliseconds and plays a 200hz tone for 300 milliseconds
	SoundBeep, 300, 300
	Sleep, 50
	SoundBeep, 200, 300
}
Else
{
	switch=0
	SoundBeep, 500, 700 ;Plays a 700hz tone for 700 milliseconds
	If rembeeps = 1 ;Reminder beeps are active
	{
		SetTimer, remindMe, on ;Turns on reminder beeps when reactivating numpad  keys
	}
}
Exit
+#z::
finish:
Suspend, permit ;/Exempts this section from hotkey suspension
MsgBox, , ,Closing  ly keypad script,2 ;Gives the closing message for 2 seconds
ExitApp
Return
#h::
HelpMe:
Gui, font, s14, arial
Gui, Add, Text, ,Ly keypad script version 1.0.blah by Juan
Gui, add, text, vtimeprompt, Choose duration of active program reminders
Gui, add, Listbox, vduration AltSubmit choose%myTime%, None|15 seconds|30 seconds| 1 minute|2 minutes
Gui, Add, Button, gSavetime ,Save settings
Gui, Add, Text, ,A list of reassigned keys follows. Make sure numpad is off.
Gui, Add, Listbox, ,windows plus z: enable and disable (pause) script|windows plus shift plus z: quit script|windows plus h: show this help screen|notes c to e numbers 1, 2, 3|notes f through b numbers 4, 5, 6 and plus symbol|numpad insert or zero adds flats (es)|numpad 9 adds sharps (is)|whole, half ETC. down to 64th notes: right shift plus 1 to 7|dot for notes: right shift numpad 8|stacatto (dash and dot): right shift numpad9|rest: numpad 8|whole measure rest: right shift numpad zero||chords (insert and place cursor between <> symbols): right shift and plus symbol|raise octave: numpad minus|lower octave: shift numpad minus|regular tie: numpad 7|phrasing slurs: right shift numpad slash and multiply|space: numpad enter
Gui, Add, Button, default, OK
Gui, Add, Button, ,Close
Gui, Show
return
ButtonClose:
Gosub, finish
ButtonOK:
Gui, Submit
Gui, destroy
Gosub, Savesettings ;To check whether the ini file needs to be updated
If duration = 1
{
	rembeeps = 0
}
Else
{
	rembeeps = 1
}
If duration = 2
{
	recur = 15000 ;Sets duration of reminder beeps to 15 seconds
}
Else if duration = 3
{
	recur = 30000 ;Sets duration to 30 seconds
}
Else if duration = 4
{
	recur = 60000 ;Sets duration to 1 minute
}
Else recur = 120000 ;Sets duration to 2 minutes
If rembeeps = 1 ;A duration other than none has been selected
{
	SetTimer, remindMe, %recur%
}
Else if rembeeps = 0
{
	SetTimer, remindMe, off
}
Return
Savetime:
watching = 1 ;Tis subroutine called when Save settings button is pressed
Return
Savesettings:
If watching = 1 ;The Save settings button has been pressed so the ini file is rewritten
{
	Iniwrite, %duration%, numpad-keys.ini, Options, myTime
	watching = 0 ;Reset to avoid unwanted updating of the ini file
}
Return
remindMe: ;This subroutine generates the reminder beeps
	SoundBeep,1300, 30 ;Plays a 1300hz tone for 30 milliseconds
	Sleep, 30 ;Pauses for 30 milliseconds
	SoundBeep, 1300, 30
Return
