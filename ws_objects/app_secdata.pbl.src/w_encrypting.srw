$PBExportHeader$w_encrypting.srw
forward
global type w_encrypting from w_base
end type
type st_4 from statictext within w_encrypting
end type
type st_3 from statictext within w_encrypting
end type
type rb_asymetric from radiobutton within w_encrypting
end type
type rb_symetric from radiobutton within w_encrypting
end type
type mle_3 from multilineedit within w_encrypting
end type
type mle_1 from multilineedit within w_encrypting
end type
type st_2 from statictext within w_encrypting
end type
type st_1 from statictext within w_encrypting
end type
type cb_3 from commandbutton within w_encrypting
end type
type mle_2 from multilineedit within w_encrypting
end type
type cb_1 from commandbutton within w_encrypting
end type
type gb_option from groupbox within w_encrypting
end type
end forward

global type w_encrypting from w_base
integer width = 4315
integer height = 1608
string title = "Demo - Encoding"
st_4 st_4
st_3 st_3
rb_asymetric rb_asymetric
rb_symetric rb_symetric
mle_3 mle_3
mle_1 mle_1
st_2 st_2
st_1 st_1
cb_3 cb_3
mle_2 mle_2
cb_1 cb_1
gb_option gb_option
end type
global w_encrypting w_encrypting

type variables
String is_privkey
end variables

on w_encrypting.create
int iCurrent
call super::create
this.st_4=create st_4
this.st_3=create st_3
this.rb_asymetric=create rb_asymetric
this.rb_symetric=create rb_symetric
this.mle_3=create mle_3
this.mle_1=create mle_1
this.st_2=create st_2
this.st_1=create st_1
this.cb_3=create cb_3
this.mle_2=create mle_2
this.cb_1=create cb_1
this.gb_option=create gb_option
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_4
this.Control[iCurrent+2]=this.st_3
this.Control[iCurrent+3]=this.rb_asymetric
this.Control[iCurrent+4]=this.rb_symetric
this.Control[iCurrent+5]=this.mle_3
this.Control[iCurrent+6]=this.mle_1
this.Control[iCurrent+7]=this.st_2
this.Control[iCurrent+8]=this.st_1
this.Control[iCurrent+9]=this.cb_3
this.Control[iCurrent+10]=this.mle_2
this.Control[iCurrent+11]=this.cb_1
this.Control[iCurrent+12]=this.gb_option
end on

on w_encrypting.destroy
call super::destroy
destroy(this.st_4)
destroy(this.st_3)
destroy(this.rb_asymetric)
destroy(this.rb_symetric)
destroy(this.mle_3)
destroy(this.mle_1)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_3)
destroy(this.mle_2)
destroy(this.cb_1)
destroy(this.gb_option)
end on

type st_4 from statictext within w_encrypting
integer x = 1554
integer y = 944
integer width = 1193
integer height = 84
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Elapsed Time:"
boolean focusrectangle = false
end type

type st_3 from statictext within w_encrypting
integer x = 1554
integer y = 856
integer width = 1193
integer height = 84
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Bytes:"
boolean focusrectangle = false
end type

type rb_asymetric from radiobutton within w_encrypting
integer x = 1769
integer y = 1244
integer width = 526
integer height = 92
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Asymetric Key"
boolean checked = true
end type

event clicked;mle_2.text=""
mle_3.text=""

end event

type rb_symetric from radiobutton within w_encrypting
integer x = 1769
integer y = 1160
integer width = 517
integer height = 96
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Symetric Key"
end type

event clicked;mle_2.text=""
mle_3.text=""

end event

type mle_3 from multilineedit within w_encrypting
integer x = 3031
integer y = 176
integer width = 1189
integer height = 672
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type mle_1 from multilineedit within w_encrypting
integer x = 50
integer y = 172
integer width = 1189
integer height = 672
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "PowerBuilder es un entorno de desarrollo de aplicaciones empresariales centrado en DWs."
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_encrypting
integer x = 3387
integer y = 52
integer width = 457
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Decrypt"
boolean focusrectangle = false
end type

type st_1 from statictext within w_encrypting
integer x = 1897
integer y = 64
integer width = 448
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Encrypt"
boolean focusrectangle = false
end type

type cb_3 from commandbutton within w_encrypting
integer x = 2761
integer y = 368
integer width = 224
integer height = 112
integer taborder = 40
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = ">>"
end type

event clicked;String ls_data, ls_decrypted
String ls_password
nvo_crypterobject lnv_crypterobject

st_4.Text = "Elapsed Time: "
mle_3.Text = ""
ls_data = mle_2.Text
lnv_crypterobject = Create nvo_crypterobject

SetPointer(HourGlass!)
idbl_start = wf_PerfStart()
IF rb_symetric.Checked = TRUE THEN
	
	ls_password  ="PBMyKey012345678"
	
	ls_decrypted = lnv_crypterobject.of_SymmetricDecryp(ls_data, ls_password)

ELSE
	ls_decrypted = lnv_crypterobject.of_AsymmetricDecrypt(ls_data, is_privkey)
END IF

mle_3.Text = ls_decrypted
idbl_elapsed = wf_PerfStop(idbl_start)
st_4.Text = "Elapsed Time: "+ String(idbl_elapsed, "#,##0.0000") + " seconds"
DESTROY lnv_crypterobject 















end event

type mle_2 from multilineedit within w_encrypting
integer x = 1550
integer y = 172
integer width = 1189
integer height = 672
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_encrypting
integer x = 1289
integer y = 380
integer width = 224
integer height = 112
integer taborder = 30
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = ">>"
end type

event clicked;String ls_data, ls_encrypted, ls_pubkey
String ls_password
nvo_crypterobject lnv_crypterobject

lnv_crypterobject = Create nvo_crypterobject

mle_2.Text =""
mle_3.Text =""
st_3.Text = "Bytes: "
st_4.Text = "Elapsed Time: "

ls_data = mle_1.Text

SetPointer(HourGlass!)
idbl_start = wf_PerfStart()
IF rb_symetric.Checked = TRUE THEN
	
	ls_password  = "PBMyKey012345678"
	
	ls_encrypted = lnv_crypterobject.of_SymmetricEncrypt(ls_data, ls_password)
	
	mle_2.Text = ls_encrypted 

ELSE
	ls_pubKey =  "Demo PB1"
	ls_encrypted = lnv_crypterobject.of_AsymmetricEncrypt(ls_data, ls_pubKey, ref is_privkey)
END IF


mle_2.Text = ls_encrypted
SetPointer(Arrow!)
st_3.Text = "Bytes: "+ String(Len(ls_encrypted))
idbl_elapsed = wf_PerfStop(idbl_start)
st_4.Text = "Elapsed Time: "+ String(idbl_elapsed, "#,##0.0000") + " seconds"

DESTROY lnv_crypterobject 



end event

type gb_option from groupbox within w_encrypting
integer x = 1746
integer y = 1068
integer width = 759
integer height = 304
integer taborder = 100
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Encrypt Options"
end type

