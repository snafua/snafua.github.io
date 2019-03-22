create procedure "_SWA"."WorkbookRunHourDates"( 
  in @RowId char(1024) ) 
result( 
  "LastRunHourDate" char(10),
  "LastLogbookDate" char(10) ) 
begin
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  call "SWA"."WorkbookRunHourDates"(@VesselId)
end