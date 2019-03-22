create procedure "_SEAS"."VibrationEquipmentEditorInitialValues"( in @VesselId smallint,in @EquipmentId integer ) 
result( "Mid" integer,"MachineName" char(80),"NominalSpeed" integer,"SpeedVariation" integer,"SWAB" char(6),"NamePlateText" long varchar ) 
begin
  call "SEAS"."VibrationEquipmentEditorInitialValues"(@VesselId,@EquipmentId)
end