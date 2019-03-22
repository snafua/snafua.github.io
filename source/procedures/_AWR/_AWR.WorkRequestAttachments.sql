create procedure "_AWR"."WorkRequestAttachments"( 
  in @RowId char(256) ) 
result( 
  "RowId" char(256),
  "AttachmentTitle" char(128),
  "AttachmentDescription" long varchar,
  "AttachmentBytes" integer,
  "Enclosure" bit,
  "AttachmentPermissions" integer ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "AWR"."WorkRequestAttachments"(@VesselId,@WorkRequestId)
end