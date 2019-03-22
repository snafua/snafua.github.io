create procedure "_SWA"."RepairItemNarrative"( 
  in @RowId char(1024) ) 
result( 
  "WRNarrative" long varchar,
  "NarrativePermissions" integer ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  select "SWA"."RepairItemNarrative"(@VesselId,@WorkRequestId) as "WRNarrative",
    8 as "NarrativePermissions"
    from "DUMMY"
end