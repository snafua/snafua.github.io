create procedure "_AWR"."WorkRequestNarrative"( 
  in @RowId char(256) ) 
result( 
  "Narrative" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  select "AWR"."WorkRequestAbstracts"(@VesselId,@WorkRequestId) as "Narrative"
end