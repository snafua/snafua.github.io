create procedure "_SWA"."RepairCollaborationSave"( 
  in @RowId char(1024),
  in @CollaborationText char(2048) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "SWA"."RepairCollaborationSave"(@VesselId,@WorkRequestId,@CollaborationText)
end