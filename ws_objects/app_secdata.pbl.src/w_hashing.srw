$PBExportHeader$w_hashing.srw
forward
global type w_hashing from w_base
end type
type rb_sha from radiobutton within w_hashing
end type
type rb_hmac from radiobutton within w_hashing
end type
type rb_md5 from radiobutton within w_hashing
end type
type st_4 from statictext within w_hashing
end type
type mle_1 from multilineedit within w_hashing
end type
type st_1 from statictext within w_hashing
end type
type mle_2 from multilineedit within w_hashing
end type
type cb_1 from commandbutton within w_hashing
end type
type gb_option from groupbox within w_hashing
end type
end forward

global type w_hashing from w_base
integer width = 2848
integer height = 1544
string title = "Demo - Hashing"
rb_sha rb_sha
rb_hmac rb_hmac
rb_md5 rb_md5
st_4 st_4
mle_1 mle_1
st_1 st_1
mle_2 mle_2
cb_1 cb_1
gb_option gb_option
end type
global w_hashing w_hashing

on w_hashing.create
int iCurrent
call super::create
this.rb_sha=create rb_sha
this.rb_hmac=create rb_hmac
this.rb_md5=create rb_md5
this.st_4=create st_4
this.mle_1=create mle_1
this.st_1=create st_1
this.mle_2=create mle_2
this.cb_1=create cb_1
this.gb_option=create gb_option
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.rb_sha
this.Control[iCurrent+2]=this.rb_hmac
this.Control[iCurrent+3]=this.rb_md5
this.Control[iCurrent+4]=this.st_4
this.Control[iCurrent+5]=this.mle_1
this.Control[iCurrent+6]=this.st_1
this.Control[iCurrent+7]=this.mle_2
this.Control[iCurrent+8]=this.cb_1
this.Control[iCurrent+9]=this.gb_option
end on

on w_hashing.destroy
call super::destroy
destroy(this.rb_sha)
destroy(this.rb_hmac)
destroy(this.rb_md5)
destroy(this.st_4)
destroy(this.mle_1)
destroy(this.st_1)
destroy(this.mle_2)
destroy(this.cb_1)
destroy(this.gb_option)
end on

type rb_sha from radiobutton within w_hashing
integer x = 1824
integer y = 1232
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
string text = "SHA (SHA1)"
end type

event clicked;mle_2.text=""

end event

type rb_hmac from radiobutton within w_hashing
integer x = 1824
integer y = 1148
integer width = 645
integer height = 92
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "HMAC (HMACMD5)"
end type

event clicked;mle_2.text=""

end event

type rb_md5 from radiobutton within w_hashing
integer x = 1824
integer y = 1064
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
string text = "MD5"
boolean checked = true
end type

event clicked;mle_2.text=""

end event

type st_4 from statictext within w_hashing
integer x = 1568
integer y = 868
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

type mle_1 from multilineedit within w_hashing
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
string text = "PowerBuilder 2022"
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_hashing
integer x = 1792
integer y = 64
integer width = 736
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "MD5: Checksum"
boolean focusrectangle = false
end type

type mle_2 from multilineedit within w_hashing
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

type cb_1 from commandbutton within w_hashing
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

event clicked;String ls_data, ls_password
String ls_hash
nvo_crypterobject lnv_crypterobject

mle_2.Text =""
st_4.Text = "Elapsed Time: "

idbl_start = wf_PerfStart()
SetPointer(HourGlass!)
lnv_crypterobject = Create nvo_crypterobject
ls_data =mle_1.text

CHOOSE CASE TRUE
	CASE rb_md5.checked
		ls_hash = lnv_crypterobject.of_md5(ls_data)
	CASE 	rb_hmac.checked
		ls_password  = "PBMyKey012345678"
		ls_hash = lnv_crypterobject.of_hmac(ls_data, ls_password)
	CASE rb_sha.checked	
		ls_hash = lnv_crypterobject.of_sha(ls_data)
END CHOOSE



mle_2.Text =ls_hash
SetPointer(Arrow!)

idbl_elapsed = wf_PerfStop(idbl_start)
st_4.Text = "Elapsed Time: "+ String(idbl_elapsed, "#,##0.0000") + " seconds"
Destroy lnv_crypterobject
end event

type gb_option from groupbox within w_hashing
integer x = 1801
integer y = 972
integer width = 759
integer height = 412
integer taborder = 100
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Encode Options"
end type

