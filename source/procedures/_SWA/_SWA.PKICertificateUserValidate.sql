create procedure "_SWA"."PKICertificateUserValidate"( 
  in @PKISHA256Hash char(64),
  in @DistinguishedName char(256),
  in @PKIIssuer char(128),
  in @PKISerial char(128),
  in @PKIExpiration timestamp,
  in @CRLSHA256Hash char(64) default null,
  in @CRLIssuer char(128) default null,
  in @CRLExpiration timestamp default null,
  in @CRLStatus char(25) ) 
result( 
  "PKILogin" bit,
  "StandardLogin" bit,
  "Success" bit,
  "ErrorTitle" char(64),
  "ErrorMessage" char(256) ) 
begin
  call "SWA"."PKICertificateUserValidate"(@PKISHA256Hash,@DistinguishedName,@PKIIssuer,@PKISerial,@PKIExpiration,@CRLSHA256Hash,@CRLIssuer,@CRLExpiration,@CRLStatus)
end