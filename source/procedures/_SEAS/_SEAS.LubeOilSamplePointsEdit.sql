create procedure "_SEAS"."LubeOilSamplePointsEdit"( in @VesselId smallint,in @EquipmentId integer,in @MeasurementPointId integer ) 
result( "MeasurementPointId" integer,"VesselName" char(80),"EquipmentDescription" char(80),"MeasurementPointDescription" char(50),"LubricantId" integer,"SampleVolume" real,"StandardMeasurementPointId" integer,"FilterId" integer,"SumpVolume" integer,"PFANumber" integer,"LubricantUse" char(50) ) 
begin
  call "SEAS"."LubeOilSamplePointsEdit"(@VesselId,@EquipmentId,@MeasurementPointId)
end