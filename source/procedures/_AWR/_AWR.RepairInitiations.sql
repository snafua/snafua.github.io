create procedure "_AWR"."RepairInitiations"( 
  in @RowId char(1024) default null ) 
result( 
  "Initiation" char(80),
  "InitiationId" smallint,
  "IsSelected" bit ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "AWR"."RepairInitiations"(@VesselId,@WorkRequestId)
end