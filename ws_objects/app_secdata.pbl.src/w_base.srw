$PBExportHeader$w_base.srw
forward
global type w_base from window
end type
end forward

global type w_base from window
integer width = 4754
integer height = 1980
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
end type
global w_base w_base

type prototypes
Function boolean QueryPerformanceFrequency ( &
	Ref Double lpFrequency &
	) Library "kernel32.dll"

Function boolean QueryPerformanceCounter ( &
	Ref Double lpPerformanceCount &
	) Library "kernel32.dll"

end prototypes

type variables
Double idbl_frequency = 0
Double idbl_start, idbl_elapsed
end variables

forward prototypes
public function double wf_perfstart ()
public function double wf_perfstop (double adbl_start)
end prototypes

public function double wf_perfstart ();Double ldbl_start

If idbl_frequency = 0 Then
	QueryPerformanceFrequency(idbl_frequency)
End If

QueryPerformanceCounter(ldbl_start)

Return ldbl_start

end function

public function double wf_perfstop (double adbl_start);Double ldbl_stop, ldbl_elapsed

QueryPerformanceCounter(ldbl_stop)

If idbl_frequency > 0 Then
	ldbl_elapsed = (ldbl_stop - adbl_start) / idbl_frequency
End If

Return ldbl_elapsed

end function

on w_base.create
end on

on w_base.destroy
end on

event closequery;open(w_main)
end event

