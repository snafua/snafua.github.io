create procedure --E-03801
--RJM
"_CRT"."SitesCertificatesAttachmentAssign"( 
  in @RowId char(1024),
  in @AttachmentRowId char(1024),
  in @AttachmentTitle char(255),
  in @AttachmentFileName char(256) default null ) 
result( 
  "AttachmentRowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @SiteId integer;
  declare @CertificateId integer;
  declare @AttachmentId integer;
  set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'SiteId');
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  call "CRT"."SitesCertificatesAttachmentAssign"(@SiteId,@CertificateId,@AttachmentId,@AttachmentTitle,"ISNULL"(@AttachmentFileName,@AttachmentTitle))
end