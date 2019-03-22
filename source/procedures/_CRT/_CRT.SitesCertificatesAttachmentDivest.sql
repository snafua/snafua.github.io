create procedure "_CRT"."SitesCertificatesAttachmentDivest"( 
  in @RowId char(1024),
  in @AttachmentRowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @SiteId integer;
  declare @CertificateId integer;
  declare @AttachmentId integer;
  set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'SiteId');
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  call "CRT"."SitesCertificatesAttachmentDivest"(@SiteId,@CertificateId,@AttachmentId)
end