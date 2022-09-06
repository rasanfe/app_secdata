$PBExportHeader$app_secdata.sra
$PBExportComments$Generated Application Object
forward
global type app_secdata from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type app_secdata from application
string appname = "app_secdata"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 21.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditx64type = 3
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = ""
string appruntimeversion = "22.0.0.1878"
boolean manualsession = false
boolean unsupportedapierror = false
end type
global app_secdata app_secdata

on app_secdata.create
appname="app_secdata"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on app_secdata.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//open(w_encoding)
//open(w_encrypting)
//open(w_hashing)
open(w_main)
end event

