$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type shl_1 from statichyperlink within w_main
end type
type st_info from statictext within w_main
end type
type st_platform from statictext within w_main
end type
type st_myversion from statictext within w_main
end type
type cb_3 from commandbutton within w_main
end type
type cb_2 from commandbutton within w_main
end type
type cb_1 from commandbutton within w_main
end type
type p_logo from picture within w_main
end type
type r_1 from rectangle within w_main
end type
end forward

global type w_main from window
integer width = 2327
integer height = 1080
boolean titlebar = true
string title = "Protección Nativa de Datos"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
shl_1 shl_1
st_info st_info
st_platform st_platform
st_myversion st_myversion
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
p_logo p_logo
r_1 r_1
end type
global w_main w_main

forward prototypes
public subroutine wf_version (statictext ast_version, statictext ast_patform)
end prototypes

public subroutine wf_version (statictext ast_version, statictext ast_patform);String ls_version, ls_platform
environment env
integer rtn

rtn = GetEnvironment(env)

IF rtn <> 1 THEN 
	ls_version = string(year(today()))
	ls_platform="32"
ELSE
	ls_version = "20"+ string(env.pbmajorrevision)+ "." + string(env.pbbuildnumber)
	ls_platform=string(env.ProcessBitness)
END IF

ls_platform += " Bits"

ast_version.text=ls_version
ast_patform.text=ls_platform

end subroutine

on w_main.create
this.shl_1=create shl_1
this.st_info=create st_info
this.st_platform=create st_platform
this.st_myversion=create st_myversion
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.p_logo=create p_logo
this.r_1=create r_1
this.Control[]={this.shl_1,&
this.st_info,&
this.st_platform,&
this.st_myversion,&
this.cb_3,&
this.cb_2,&
this.cb_1,&
this.p_logo,&
this.r_1}
end on

on w_main.destroy
destroy(this.shl_1)
destroy(this.st_info)
destroy(this.st_platform)
destroy(this.st_myversion)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.p_logo)
destroy(this.r_1)
end on

event open;wf_version(st_myversion, st_platform)
end event

type shl_1 from statichyperlink within w_main
integer x = 526
integer y = 728
integer width = 1184
integer height = 64
integer textsize = -7
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
boolean underline = true
string pointer = "HyperLink!"
long textcolor = 134217856
long backcolor = 553648127
string text = "Agradecimiento a Dora Sistemas por su Ejemplo de Youtube"
alignment alignment = right!
boolean focusrectangle = false
string url = "https://www.youtube.com/watch?v=MbuxTZYqmvM&t=616s"
end type

type st_info from statictext within w_main
integer x = 905
integer y = 900
integer width = 1353
integer height = 64
integer textsize = -7
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 8421504
long backcolor = 553648127
string text = "Copyright © Ramón San Félix Ramón  rsrsystem.soft@gmail.com"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_platform from statictext within w_main
integer x = 1838
integer y = 144
integer width = 402
integer height = 64
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16777215
long backcolor = 33521664
string text = "Bits"
alignment alignment = Right!
boolean focusrectangle = false
end type

type st_myversion from statictext within w_main
integer x = 1838
integer y = 56
integer width = 402
integer height = 64
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16777215
long backcolor = 33521664
string text = "Versión"
alignment alignment = Right!
boolean focusrectangle = false
end type

type cb_3 from commandbutton within w_main
integer x = 1472
integer y = 516
integer width = 457
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Hashing Demo"
end type

event clicked;open(w_hashing)
close(parent)
end event

type cb_2 from commandbutton within w_main
integer x = 841
integer y = 516
integer width = 494
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Encrypting Demo"
end type

event clicked;open(w_encrypting)
close(parent)
end event

type cb_1 from commandbutton within w_main
integer x = 233
integer y = 516
integer width = 457
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Encoding Demo"
end type

event clicked;open(w_encoding)
close(parent)

end event

type p_logo from picture within w_main
integer x = 5
integer y = 4
integer width = 1253
integer height = 248
boolean originalsize = true
string picturename = "logo.jpg"
boolean focusrectangle = false
end type

type r_1 from rectangle within w_main
long linecolor = 33554432
linestyle linestyle = transparent!
integer linethickness = 4
long fillcolor = 33521664
integer width = 2277
integer height = 260
end type

