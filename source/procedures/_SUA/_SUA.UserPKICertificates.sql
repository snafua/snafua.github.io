create procedure "_SUA"."UserPKICertificates"( 
  in @RowId char(1024),
  in @OrderBy char(1024) default null ) 
result( 
  "RowId" char(1024),
  "CertificateDistinguishedName" char(256),
  "CertificateFingerprint" char(64),
  "CertificateIssuer" char(128),
  "CertificateType" char(25),
  "CertificateUserIdentifier" char(25),
  "CertificateSerialNumber" char(128),
  "CertificateStatus" char(25),
  "LastLoginTimestamp" timestamp ) 
begin
  declare @UserId integer;
  set @UserId = "SWA"."KeyValuePairParse"(@RowId,'UserId');
  call "SUA"."UserPKICertificates"(@UserId,@OrderBy)
end