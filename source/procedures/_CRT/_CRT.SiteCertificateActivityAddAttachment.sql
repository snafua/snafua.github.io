create procedure --RJM
"_CRT"."SiteCertificateActivityAddAttachment"( 
  in @RowId char(1024),
  in @AttachmentTitle char(128),
  in @Attachment long binary ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar,
  "ActivityId" integer ) 
begin
  /*
2018-02-16 RJM
*/
  declare @SiteId integer;
  declare @CertificateId integer;
  set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'SiteId');
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  call "CRT"."SiteCertificateActivityAddAttachment"(@SiteId,@CertificateId,@AttachmentTitle,@Attachment)
end