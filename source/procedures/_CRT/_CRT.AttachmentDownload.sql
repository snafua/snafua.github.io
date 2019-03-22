create procedure "_CRT"."AttachmentDownload"( 
  in @AttachmentRowId char(1024) ) 
result( 
  "Attachment" long binary ) 
begin
  declare @AttachmentId integer;
  declare @SiteId integer;
  declare @CertificateId integer;
  set @SiteId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'SiteId');
  set @CertificateId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'CertificateId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  call "CRT"."AttachmentDownload"(@SiteId,@CertificateId,@AttachmentId)
end