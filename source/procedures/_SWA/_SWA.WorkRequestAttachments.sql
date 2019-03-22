create procedure "_SWA"."WorkRequestAttachments"( 
  in @RowId char(256) ) 
result( 
  "AttachmentRowId" char(1024),
  "AttachmentTitle" char(200),
  "AttachmentDescription" char(200),
  "AttachmentBytes" integer,
  "AttachmentPermissions" integer ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "SWA"."WorkRequestAttachments"(@VesselId,@WorkRequestId)
end