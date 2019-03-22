create procedure --E-03801
--RJM
"_CRT"."SitesCertificatesAttachments"( 
  in @RowId char(1024) ) 
result( 
  "AttachmentRowId" char(1024),
  "AttachmentBytes" integer,
  "AttachmentTitle" char(128),
  "Attachment" long varchar,
  "AttachmentFileName" char(150),
  "AttachmentPermissions" integer ) 
begin
  declare @SiteId integer;
  declare @CertificateId integer;
  set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'SiteId');
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  call "CRT"."SitesCertificatesAttachments"(@SiteId,@CertificateId)
end