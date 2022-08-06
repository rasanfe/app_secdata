$PBExportHeader$nvo_coderobject.sru
forward
global type nvo_coderobject from coderobject
end type
end forward

global type nvo_coderobject from coderobject
end type
global nvo_coderobject nvo_coderobject

forward prototypes
public function string of_base32encode (string as_value)
public function string of_base64encode (string as_value)
public function string of_base64urlencode (string as_value)
public function string of_hexencode (string as_value)
public function string of_urlencode (string as_value)
public function string of_base32decode (string as_value)
public function string of_base64decode (string as_value)
public function string of_base64urldecode (string as_value)
public function string of_urldecode (string as_value)
public function string of_hexdecode (string as_value)
public function boolean of_fileread (string as_filename, ref blob ab_data)
public function boolean of_filewrite (string as_filename, blob ab_data)
end prototypes

public function string of_base32encode (string as_value);Blob lb_value
String ls_encode

lb_value = blob(as_value, EncodingANSI!)

ls_encode = base32encode(lb_value)

RETURN ls_encode

end function

public function string of_base64encode (string as_value);Blob lb_value
String ls_encode

lb_value = blob(as_value, EncodingANSI!)

ls_encode = base64encode(lb_value)

RETURN ls_encode

end function

public function string of_base64urlencode (string as_value);Blob lb_value
String ls_encode

lb_value = blob(as_value, EncodingANSI!)

ls_encode = base64urlencode(lb_value)

RETURN ls_encode

end function

public function string of_hexencode (string as_value);Blob lb_value
String ls_encode

lb_value = blob(as_value, EncodingANSI!)

ls_encode = hexencode(lb_value)

RETURN ls_encode

end function

public function string of_urlencode (string as_value);Blob lb_value
String ls_encode

lb_value = blob(as_value, EncodingANSI!)

ls_encode = urlencode(lb_value)

RETURN ls_encode

end function

public function string of_base32decode (string as_value);Blob lb_value
String ls_decode
ULong lul_len

// allocate decoded buffer
lul_len = Len(as_value)
lb_value = Blob(Space(lul_len))

lb_value = base32decode(as_value)

ls_decode = String(BlobMid(lb_value, 1, lul_len), EncodingAnsi!)

RETURN ls_decode

end function

public function string of_base64decode (string as_value);Blob lb_value
String ls_decode
ULong lul_len

// allocate decoded buffer
lul_len = Len(as_value)
lb_value = Blob(Space(lul_len))

lb_value = base64decode(as_value)

ls_decode = String(BlobMid(lb_value, 1, lul_len), EncodingAnsi!)

RETURN ls_decode

end function

public function string of_base64urldecode (string as_value);Blob lb_value
String ls_decode
ULong lul_len

// allocate decoded buffer
lul_len = Len(as_value)
lb_value = Blob(Space(lul_len))

lb_value = base64urldecode(as_value)

ls_decode = String(BlobMid(lb_value, 1, lul_len), EncodingAnsi!)

RETURN ls_decode

end function

public function string of_urldecode (string as_value);Blob lb_value
String ls_decode
ULong lul_len

// allocate decoded buffer
lul_len = Len(as_value)
lb_value = Blob(Space(lul_len))

lb_value = urldecode(as_value)

ls_decode = String(BlobMid(lb_value, 1, lul_len), EncodingAnsi!)

RETURN ls_decode

end function

public function string of_hexdecode (string as_value);Blob lb_value
String ls_decode
ULong lul_len

// allocate decoded buffer
lul_len = Len(as_value)
lb_value = Blob(Space(lul_len))

lb_value = hexdecode(as_value)

ls_decode = String(BlobMid(lb_value, 1, lul_len), EncodingAnsi!)

RETURN ls_decode

end function

public function boolean of_fileread (string as_filename, ref blob ab_data);// --------------------------------------------------------------------------------------
// SCRIPT:     of_FileRead
//
// PURPOSE:    This function is used to read a file from disk to a blob.
//
// ARGUMENTS:  as_filename		- Filename
//						ab_data			- 	By ref blob to receive the file contents
//
// RETURN:     True = Success, False = Failure
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-----------------------------------------------------------
// 24/01/2022	Ramón Sa Félix 	Initial Creation
// --------------------------------------------------------------------------------------

Integer li_file
Blob lb_temp
long ll_bytes

li_file = FileOpen(as_filename, StreamMode!)
	
IF li_file = -1 then
	RETURN FALSE
ELSE
	ll_bytes = FileReadEx(li_file, ab_data) 
	FileClose(li_file)
END IF		

RETURN TRUE

end function

public function boolean of_filewrite (string as_filename, blob ab_data);// --------------------------------------------------------------------------------------
// SCRIPT:     of_WriteFile
//
// PURPOSE:    This function writes a blob to a file on disk.
//
// ARGUMENTS:  as_filename		- The name of the file
//					   ab_ata				- The blob data of the file
//
// RETURN:     True = Success, False = Failure
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-----------------------------------------------------------
// 24/01/2022	Ramón San Félix	Initial Creation
// --------------------------------------------------------------------------------------
Integer li_file

li_file = FileOpen(as_filename, StreamMode!, Write!)

IF li_file = - 1 THEN
	RETURN FALSE
END IF

FileWriteEx(li_file, ab_data)
FileClose(li_file)

RETURN TRUE
end function

on nvo_coderobject.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo_coderobject.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

