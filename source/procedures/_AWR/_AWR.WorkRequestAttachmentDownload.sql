create procedure "_AWR"."WorkRequestAttachmentDownload"( 
  in @AttachmentRowId char(256) ) 
result( 
  "Document" long varchar ) 
begin
  declare @VesselId integer;
  declare @AttachmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'VesselId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  select "AWR"."WorkRequestAttachmentDownLoad"(@VesselId,@AttachmentId) as "Document"
end