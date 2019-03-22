create procedure --RJM
"_AWB"."WorkbookRunningHoursOverhaul"( 
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
  set @VesselId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
  call "AWB"."WorkbookRunningHoursOverhaul"(@VesselId,@EquipmentId)
end