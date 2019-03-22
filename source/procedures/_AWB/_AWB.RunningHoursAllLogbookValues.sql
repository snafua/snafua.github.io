create procedure --RJM
"_AWB"."RunningHoursAllLogbookValues"( 
  in @NodeId char(1024) default null,
  in @VesselId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-06-27 RJM E-04250
*/
  declare @Success bit;
  declare @ErrorMessage long varchar;
  if(@VesselId is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId')
  end if;
  call "AWB"."RunningHoursAllLogbookValues"(@VesselId)
end