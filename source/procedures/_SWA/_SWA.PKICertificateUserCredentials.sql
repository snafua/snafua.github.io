create procedure "_SWA"."PKICertificateUserCredentials"( 
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
  "UserLoginId" char(128),
  "UserPassword" char(128) ) 
begin
  call "SWA"."PKICertificateUserCredentials"(@PKISHA256Hash,@DistinguishedName,@PKIIssuer,@PKISerial,@PKIExpiration,@CRLSHA256Hash,@CRLIssuer,@CRLExpiration,@CRLStatus)
end