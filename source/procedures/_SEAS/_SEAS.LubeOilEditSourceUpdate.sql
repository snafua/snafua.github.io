create procedure "_SEAS"."LubeOilEditSourceUpdate"( in @LabId char(8),in @SampleId char(9),in @VesselId smallint,in @EquipmentId integer,in @MeasurementPointId integer,in @Comments long varchar ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilEditSourceUpdate"(@LabId,@SampleId,@VesselId,@EquipmentId,@MeasurementPointId,@Comments)
end