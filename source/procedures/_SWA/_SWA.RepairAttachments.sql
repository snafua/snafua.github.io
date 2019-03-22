create procedure "_SWA"."RepairAttachments"( 
  in @RowId char(256) ) 
result( 
  "AttachmentRowId" char(256),
  "AttachmentBytes" integer,
  "AttachmentTitle" char(128),
  "AttachmentDescription" long varchar,
  "Enclosure" bit,
  "AttachmentPermissions" integer ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "SWA"."RepairAttachments"(@VesselId,@WorkRequestId)
end