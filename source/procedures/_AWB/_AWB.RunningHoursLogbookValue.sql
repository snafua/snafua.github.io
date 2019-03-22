create procedure --RJM
"_AWB"."RunningHoursLogbookValue"( 
  in @EquipmentRowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-06-27 RJM E-04250
*/
  declare @Success bit;
  declare @ErrorMessage long varchar;
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @CumulativeHours integer;
  declare @LogbookHours integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
  set @CumulativeHours = "SWA"."KeyValuePairParse"(@EquipmentRowId,'CumHours');
  set @LogbookHours = "SWA"."KeyValuePairParse"(@EquipmentRowId,'LogbookHours');
  call "AWB"."WorkbookRunningHoursSave"(@VesselId,@EquipmentId,@LogbookHours,@CumulativeHours,@LogbookHours)
end