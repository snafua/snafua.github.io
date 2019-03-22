create procedure "_AWR"."WorkRequestNotes"( 
  in @RowId char(256) ) 
result( 
  "WorkRequestNotes" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  select "AWR"."WorkRequestNotes"(@VesselId,@WorkRequestId) as "WorkRequestNotes"
end