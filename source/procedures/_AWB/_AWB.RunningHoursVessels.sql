create procedure --RJM
"_AWB"."RunningHoursVessels"( 
  in @RowId char(1024) default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "VesselSelected" bit ) 
begin
  /*
2018-07-16 RJM E-04250
*/
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  call "AWB"."RunningHoursVessels"(@VesselId)
end