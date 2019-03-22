create procedure "_CRT"."SitesCertificatesHistory"( 
  in @RowId char(1024) ) 
result( 
  "CertificateHistoryRowId" char(1024),
  "CertificateHistoryComment" char(256),
  "CertificateHistoryDate" timestamp,
  "UserFullName" char(256) ) 
begin
  declare @SiteId integer;
  declare @CertificateId integer;
  set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'SiteId');
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  call "CRT"."SitesCertificatesHistory"(@SiteId,@CertificateId)
end