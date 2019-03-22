create procedure --RJM
"_AWB"."WorkbookRunningHoursSave"( 
  in @EquipmentRowId char(1024),
  in @RunningHours integer,
  in @OverhaulReason char(10) default null,
  in @OverhaulHours integer default null,
  in @Overhaul bit default 0,
  in @ResetCumulativeHours bit default 0 ) 
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
  declare @CurrentHours integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
  set @CumulativeHours = "SWA"."KeyValuePairParse"(@EquipmentRowId,'CumHours');
  set @CurrentHours = "SWA"."KeyValuePairParse"(@EquipmentRowId,'CurrentHours');
  call "AWB"."WorkbookRunningHoursSave"(@VesselId,@EquipmentId,@RunningHours,@CumulativeHours,@CurrentHours,@OverhaulReason,@OverhaulHours,@Overhaul,@ResetCumulativeHours)
end