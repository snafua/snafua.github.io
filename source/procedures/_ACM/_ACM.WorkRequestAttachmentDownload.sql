create procedure "_ACM"."WorkRequestAttachmentDownload"( 
  in @AttachmentRowId char(256) ) 
result( 
  "Document" long varchar ) 
begin
  declare @VesselId integer;
  declare @AttachmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'VesselId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  select "ACM"."WorkRequestAttachmentDownload"(@VesselId,@AttachmentId) as "Document"
end