create procedure "_SEAS"."LubeOilSamplePointsList"( in @VesselId smallint,in @EquipmentId integer,in @Sort long varchar,in @Filter long varchar ) 
result( "MeasurementPointId" integer,"MeasurementPointDescription" char(50) ) 
begin
  call "SEAS"."LubeOilSamplePointsList"(@VesselId,@EquipmentId,@Sort,@Filter)
end