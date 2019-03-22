create procedure "_ACM"."WorkRequestNarrative"( 
  in @RowId char(256) ) 
result( 
  "CorrectiveMaintenanceNarrative" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  select "SWA"."WorkRequestNarrative"(@VesselId,@WorkRequestId) as "CorrectiveMaintenanceNarrative"
end