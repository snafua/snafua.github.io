create procedure "_SWA"."AttachmentsLoad"( 
  in @RowId char(256) ) 
result( 
  "RowId" char(256),
  "AttachmentTitle" char(128),
  "AttachmentDescription" long varchar,
  "AttachmentBytes" integer,
  "Enclosure" bit ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "SWA"."AttachmentsLoad"(@VesselId,@WorkRequestId)
end