$PBExportHeader$nvo_crypterobject.sru
forward
global type nvo_crypterobject from crypterobject
end type
end forward

global type nvo_crypterobject from crypterobject
end type
global nvo_crypterobject nvo_crypterobject

type variables

end variables

forward prototypes
public function string of_symmetricdecryp (string as_value, string as_password)
public function string of_symmetricencrypt (string as_value, string as_password)
public function string of_md5 (string as_value)
public function string of_hmac (string as_value, string as_password)
public function string of_sha (string as_value)
public function string of_asymmetricencrypt (string as_value, string as_pubkey, ref string as_privkey)
public function string of_asymmetricdecrypt (string as_value, string as_privkey)
end prototypes

public function string of_symmetricdecryp (string as_value, string as_password);Blob lblb_data, lblb_key, lblb_iv, lblb_Decrypted
String ls_decrypted

lblb_data = Blob(as_value)
lblb_key  = Blob(as_password, EncodingANSI!)
lblb_iv    = Blob("IV 0000001", EncodingANSI!)

lblb_Decrypted = SymmetricDecrypt(AES!, lblb_data, lblb_key, OperationModeCBC!, lblb_iv, PKCSPadding!)

ls_decrypted = String(lblb_Decrypted, EncodingAnsi!)

Return ls_decrypted
end function

public function string of_symmetricencrypt (string as_value, string as_password);Blob lblb_data, lblb_key, lblb_iv, lblb_Encrypted
String ls_encrypted

lblb_data = Blob(as_value, EncodingANSI!)
lblb_key  = Blob(as_password, EncodingANSI!)
lblb_iv    = Blob("IV 0000001", EncodingANSI!)

lblb_Encrypted = SymmetricEncrypt(AES!, lblb_data, lblb_key, OperationModeCBC!, lblb_iv, PKCSPadding!)

ls_encrypted = String(lblb_Encrypted)

Return ls_encrypted
end function

public function string of_md5 (string as_value);String ls_md5
Blob lblb_data, lblb_md5
nvo_coderobject lnv_coderobject

lblb_data = Blob(trim(as_value), EncodingANSI!)

lblb_md5 = MD5(lblb_data)

lnv_coderobject = Create nvo_coderobject

ls_md5    = lnv_coderobject.HexEncode(lblb_md5)

Destroy lnv_coderobject

RETURN ls_md5
end function

public function string of_hmac (string as_value, string as_password);String ls_hmac
Blob lblb_data, lblb_hmac, lblb_key
nvo_coderobject lnv_coderobject

lblb_data = Blob(trim(as_value), EncodingANSI!)
lblb_key = Blob(as_password, EncodingANSI!)

//Algoritmos
//	HMACMD5! 
//	HMACSHA1!
//	HMACSHA224!
//	HMACSHA256!
//	HMACSHA384!
//	HMACSHA512!

lblb_hmac = HMAC(HMACMD5!, lblb_data, lblb_key)

lnv_coderobject = Create nvo_coderobject

ls_hmac    = lnv_coderobject.HexEncode(lblb_hmac)

Destroy lnv_coderobject

RETURN ls_hmac
end function

public function string of_sha (string as_value);String ls_sha1
Blob lblb_data, lblb_sha1
nvo_coderobject lnv_coderobject

lblb_data = Blob(trim(as_value), EncodingANSI!)

//Algoritmos
//	SHA1!
//	SHA224!
//	SHA256!
//	SHA384!
//	SHA512!
//	SHA3_224!
//	SHA3_256!
//	SHA3_384!
//	SHA3_512!


lblb_sha1 = SHA(SHA1!, lblb_data)

lnv_coderobject = Create nvo_coderobject

ls_sha1    = lnv_coderobject.HexEncode(lblb_sha1)

Destroy lnv_coderobject

RETURN ls_sha1
end function

public function string of_asymmetricencrypt (string as_value, string as_pubkey, ref string as_privkey);Blob lblb_data, lblb_pubKey, lblb_privKey, lblb_Encrypted
String ls_encrypted
nvo_coderobject  lnv_coderobject

lblb_data = Blob(as_value, EncodingANSI!)
lblb_pubKey  = Blob(as_pubkey, EncodingANSI!)

// Generate the private key
AsymmetricGenerateKey(RSA!, 2048, lblb_privKey, lblb_pubkey)

// Encrypt data using RSA
lblb_Encrypted = AsymmetricEncrypt(RSA!, lblb_data, lblb_pubKey)

ls_encrypted = String(lblb_Encrypted)

//Save Private Key into Reference Strng
lnv_coderobject =  CREATE nvo_coderobject
as_privkey =  lnv_coderobject.HexEncode(lblb_privKey)
Destroy  lnv_coderobject

Return ls_encrypted
end function

public function string of_asymmetricdecrypt (string as_value, string as_privkey);Blob lblb_data,  lblb_Decrypted, lblb_privKey
String ls_decrypted
nvo_coderobject lnv_coderobject

lblb_data = Blob(as_value)

//Get Private Blob Key from Sting Argumento Key
lnv_coderobject =  CREATE nvo_coderobject
lblb_privKey =  lnv_coderobject.HexDecode(as_privkey)
Destroy  lnv_coderobject

// Decrypt data using RSA
lblb_Decrypted = AsymmetricDecrypt(RSA!, lblb_data, lblb_privKey)

ls_decrypted = String(lblb_Decrypted, EncodingANSI!)


Return ls_decrypted
end function

on nvo_crypterobject.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo_crypterobject.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

