create procedure "_AWR"."AttachmentsLoad"( 
  in @RowId char(256) ) 
result( 
  "AttachmentRowId" char(256),
  "FileSize" integer,
  "FileName" char(128),
  "FileDescription" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "SWA"."AttachmentsLoad"(@VesselId,@WorkRequestId)
end