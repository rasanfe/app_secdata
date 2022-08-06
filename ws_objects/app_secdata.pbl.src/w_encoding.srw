$PBExportHeader$w_encoding.srw
forward
global type w_encoding from w_base
end type
type mle_3 from multilineedit within w_encoding
end type
type mle_1 from multilineedit within w_encoding
end type
type rb_text from radiobutton within w_encoding
end type
type rb_image from radiobutton within w_encoding
end type
type rb_picture from radiobutton within w_encoding
end type
type rb_directa from radiobutton within w_encoding
end type
type st_4 from statictext within w_encoding
end type
type rb_hex from radiobutton within w_encoding
end type
type rb_b64u from radiobutton within w_encoding
end type
type rb_b64 from radiobutton within w_encoding
end type
type rb_b32 from radiobutton within w_encoding
end type
type st_3 from statictext within w_encoding
end type
type ip_2 from inkpicture within w_encoding
end type
type ip_1 from inkpicture within w_encoding
end type
type st_2 from statictext within w_encoding
end type
type st_1 from statictext within w_encoding
end type
type cb_3 from commandbutton within w_encoding
end type
type mle_2 from multilineedit within w_encoding
end type
type cb_1 from commandbutton within w_encoding
end type
type gb_imagefilesource from groupbox within w_encoding
end type
type gb_option from groupbox within w_encoding
end type
type gb_source from groupbox within w_encoding
end type
end forward

global type w_encoding from w_base
integer width = 4315
integer height = 1988
string title = "Demo - Encoding"
mle_3 mle_3
mle_1 mle_1
rb_text rb_text
rb_image rb_image
rb_picture rb_picture
rb_directa rb_directa
st_4 st_4
rb_hex rb_hex
rb_b64u rb_b64u
rb_b64 rb_b64
rb_b32 rb_b32
st_3 st_3
ip_2 ip_2
ip_1 ip_1
st_2 st_2
st_1 st_1
cb_3 cb_3
mle_2 mle_2
cb_1 cb_1
gb_imagefilesource gb_imagefilesource
gb_option gb_option
gb_source gb_source
end type
global w_encoding w_encoding

on w_encoding.create
int iCurrent
call super::create
this.mle_3=create mle_3
this.mle_1=create mle_1
this.rb_text=create rb_text
this.rb_image=create rb_image
this.rb_picture=create rb_picture
this.rb_directa=create rb_directa
this.st_4=create st_4
this.rb_hex=create rb_hex
this.rb_b64u=create rb_b64u
this.rb_b64=create rb_b64
this.rb_b32=create rb_b32
this.st_3=create st_3
this.ip_2=create ip_2
this.ip_1=create ip_1
this.st_2=create st_2
this.st_1=create st_1
this.cb_3=create cb_3
this.mle_2=create mle_2
this.cb_1=create cb_1
this.gb_imagefilesource=create gb_imagefilesource
this.gb_option=create gb_option
this.gb_source=create gb_source
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.mle_3
this.Control[iCurrent+2]=this.mle_1
this.Control[iCurrent+3]=this.rb_text
this.Control[iCurrent+4]=this.rb_image
this.Control[iCurrent+5]=this.rb_picture
this.Control[iCurrent+6]=this.rb_directa
this.Control[iCurrent+7]=this.st_4
this.Control[iCurrent+8]=this.rb_hex
this.Control[iCurrent+9]=this.rb_b64u
this.Control[iCurrent+10]=this.rb_b64
this.Control[iCurrent+11]=this.rb_b32
this.Control[iCurrent+12]=this.st_3
this.Control[iCurrent+13]=this.ip_2
this.Control[iCurrent+14]=this.ip_1
this.Control[iCurrent+15]=this.st_2
this.Control[iCurrent+16]=this.st_1
this.Control[iCurrent+17]=this.cb_3
this.Control[iCurrent+18]=this.mle_2
this.Control[iCurrent+19]=this.cb_1
this.Control[iCurrent+20]=this.gb_imagefilesource
this.Control[iCurrent+21]=this.gb_option
this.Control[iCurrent+22]=this.gb_source
end on

on w_encoding.destroy
call super::destroy
destroy(this.mle_3)
destroy(this.mle_1)
destroy(this.rb_text)
destroy(this.rb_image)
destroy(this.rb_picture)
destroy(this.rb_directa)
destroy(this.st_4)
destroy(this.rb_hex)
destroy(this.rb_b64u)
destroy(this.rb_b64)
destroy(this.rb_b32)
destroy(this.st_3)
destroy(this.ip_2)
destroy(this.ip_1)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_3)
destroy(this.mle_2)
destroy(this.cb_1)
destroy(this.gb_imagefilesource)
destroy(this.gb_option)
destroy(this.gb_source)
end on

type mle_3 from multilineedit within w_encoding
boolean visible = false
integer x = 3013
integer y = 452
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
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type mle_1 from multilineedit within w_encoding
boolean visible = false
integer x = 23
integer y = 452
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
string text = "Ramón San Félix Ramón <rsrsystem.soft@gmail.com>"
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type rb_text from radiobutton within w_encoding
integer x = 160
integer y = 160
integer width = 896
integer height = 96
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Text"
end type

event clicked;ip_1.visible=false
ip_2.visible=false
mle_1.visible=true
mle_3.visible=true
gb_imagefilesource.enabled=false
rb_directa.enabled=false
rb_picture.enabled=false
end event

type rb_image from radiobutton within w_encoding
integer x = 160
integer y = 244
integer width = 919
integer height = 92
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Image"
boolean checked = true
end type

event clicked;ip_1.visible=true
ip_2.visible=true
mle_1.visible=false
mle_3.visible=false
gb_imagefilesource.enabled=true
rb_directa.enabled=true
rb_picture.enabled=true
end event

type rb_picture from radiobutton within w_encoding
integer x = 105
integer y = 1300
integer width = 965
integer height = 92
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "InkPictureControl.Save"
boolean checked = true
end type

type rb_directa from radiobutton within w_encoding
integer x = 105
integer y = 1212
integer width = 896
integer height = 100
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "FileRead"
end type

type st_4 from statictext within w_encoding
integer x = 1513
integer y = 1256
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

type rb_hex from radiobutton within w_encoding
integer x = 1769
integer y = 1684
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
string text = "Hexadecimal"
end type

event clicked;mle_2.text=""
mle_3.text=""
ip_2.ResetPicture( )
end event

type rb_b64u from radiobutton within w_encoding
integer x = 1769
integer y = 1604
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
string text = "Base 64 URL"
end type

event clicked;mle_2.text=""
mle_3.text=""
ip_2.ResetPicture( )
end event

type rb_b64 from radiobutton within w_encoding
integer x = 1769
integer y = 1520
integer width = 517
integer height = 92
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Base 64"
boolean checked = true
end type

event clicked;mle_2.text=""
mle_3.text=""
ip_2.ResetPicture( )
end event

type rb_b32 from radiobutton within w_encoding
integer x = 1769
integer y = 1436
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
string text = "Base 32"
end type

event clicked;mle_2.text=""
mle_3.text=""
ip_2.ResetPicture( )
end event

type st_3 from statictext within w_encoding
integer x = 1513
integer y = 1168
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

type ip_2 from inkpicture within w_encoding
integer x = 3013
integer y = 456
integer width = 1134
integer height = 672
boolean dynamicrendering = false
boolean inkenabled = false
displaysizemode picturesizemode = inkpicstretched!
end type

type ip_1 from inkpicture within w_encoding
integer x = 18
integer y = 456
integer width = 1134
integer height = 672
boolean dynamicrendering = false
string picturefilename = "img_rsr.jpeg"
end type

type st_2 from statictext within w_encoding
integer x = 3419
integer y = 336
integer width = 334
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Decode"
boolean focusrectangle = false
end type

type st_1 from statictext within w_encoding
integer x = 1929
integer y = 348
integer width = 325
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Encode"
boolean focusrectangle = false
end type

type cb_3 from commandbutton within w_encoding
integer x = 2738
integer y = 652
integer width = 224
integer height = 112
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = ">>"
end type

event clicked;Blob lblb_data
String ls_decode, ls_encoded, ls_filename
nvo_coderobject lnv_coderobject

lnv_coderobject = Create nvo_coderobject

st_4.Text = "Elapsed Time: "
ls_encoded = mle_2.Text

SetPointer(HourGlass!)
IF rb_text.checked=TRUE THEN
	mle_3.Text =""
	idbl_start = wf_PerfStart()
	CHOOSE CASE TRUE
		CASE rb_b32.Checked
			ls_decode = lnv_coderobject.of_Base32Decode(ls_encoded)
		CASE rb_b64.Checked
			ls_decode = lnv_coderobject.of_Base64Decode(ls_encoded)
		CASE rb_b64u.Checked
			ls_decode = lnv_coderobject.of_Base64UrlDecode(ls_encoded)
		CASE rb_hex.Checked
			ls_decode = lnv_coderobject.of_HexDecode(ls_encoded)
	END CHOOSE
	mle_3.text=ls_decode
ELSE	
	ip_2.ResetPicture()
	
	idbl_start = wf_PerfStart()
	CHOOSE CASE TRUE
		CASE rb_b32.Checked
			lblb_data = lnv_coderobject.Base32Decode(ls_encoded)
		CASE rb_b64.Checked
			lblb_data = lnv_coderobject.Base64Decode(ls_encoded)
		CASE rb_b64u.Checked
			lblb_data = lnv_coderobject.Base64UrlDecode(ls_encoded)
		CASE rb_hex.Checked
			lblb_data = lnv_coderobject.HexDecode(ls_encoded)
	END CHOOSE

	IF 	rb_directa.checked THEN
		//Grabamos el Archivo en disco y lo abrimos en el Picture,
		ls_filename = "new.jpg" 
		IF fileexists(ls_filename ) then filedelete(ls_filename )
		lnv_coderobject.of_FileWrite(ls_filename , lblb_data)
		ip_2.PictureFilename = ls_filename 
	ELSE
		ip_2.LoadPicture (lblb_data)
	END IF
END IF

idbl_elapsed = wf_PerfStop(idbl_start)
st_4.Text = "Elapsed Time: "+ String(idbl_elapsed, "#,##0.0000") + " seconds"
Destroy lnv_coderobject
end event

type mle_2 from multilineedit within w_encoding
integer x = 1527
integer y = 460
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

type cb_1 from commandbutton within w_encoding
integer x = 1266
integer y = 664
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

event clicked;Blob lblb_img
String ls_encode
nvo_coderobject lnv_coderobject

lnv_coderobject = Create nvo_coderobject

mle_2.Text =""
st_3.Text = "Bytes: "
st_4.Text = "Elapsed Time: "

SetPointer(HourGlass!)
IF rb_text.checked=TRUE THEN
	mle_3.Text =""
	idbl_start = wf_PerfStart()
	CHOOSE CASE TRUE
		CASE rb_b32.Checked
			ls_encode = lnv_coderobject.of_Base32Encode(mle_1.Text )
		CASE rb_b64.Checked
			ls_encode = lnv_coderobject.of_Base64Encode(mle_1.Text)
		CASE rb_b64u.Checked
			ls_encode = lnv_coderobject.of_Base64UrlEncode(mle_1.Text)
		CASE rb_hex.Checked
			ls_encode = lnv_coderobject.of_HexEncode(mle_1.Text)
	END CHOOSE
ELSE
	ip_2.ResetPicture( )
	IF 	rb_directa.checked THEN
		//Leemos el Archivo directamente del disco
		lnv_coderobject.of_FileRead("img_rsr.jpeg", REF lblb_img)
	ELSE
		ip_1.save(lblb_img, 1)
	END IF
	
	idbl_start = wf_PerfStart()
	CHOOSE CASE TRUE
		CASE rb_b32.Checked
			ls_encode = lnv_coderobject.Base32Encode(lblb_img)
		CASE rb_b64.Checked
			ls_encode = lnv_coderobject.Base64Encode(lblb_img)
		CASE rb_b64u.Checked
			ls_encode = lnv_coderobject.Base64UrlEncode(lblb_img)
		CASE rb_hex.Checked
			ls_encode = lnv_coderobject.HexEncode(lblb_img)
	END CHOOSE	
END IF

mle_2.Text = ls_encode
SetPointer(Arrow!)

st_3.Text = "Bytes: "+ String(Len(ls_encode))
idbl_elapsed = wf_PerfStop(idbl_start)
st_4.Text = "Elapsed Time: "+ String(idbl_elapsed, "#,##0.0000") + " seconds"
Destroy lnv_coderobject 

end event

type gb_imagefilesource from groupbox within w_encoding
integer x = 32
integer y = 1148
integer width = 1106
integer height = 276
integer taborder = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Image File Source"
end type

type gb_option from groupbox within w_encoding
integer x = 1746
integer y = 1344
integer width = 759
integer height = 464
integer taborder = 90
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

type gb_source from groupbox within w_encoding
integer x = 87
integer y = 72
integer width = 1019
integer height = 300
integer taborder = 10
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Source"
end type

