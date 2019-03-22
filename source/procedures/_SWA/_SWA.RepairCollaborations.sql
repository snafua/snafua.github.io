create procedure --RJM
"_SWA"."RepairCollaborations"( 
  in @RowId char(1024) ) 
result( 
  "CollaborationRowId" char(1024),
  "CollaborationAuthor" char(256),
  "CollaborationTimeStamp" timestamp,
  "CollaborationText" char(2048) ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "SWA"."RepairCollaborations"(@VesselId,@WorkRequestId)
end