create procedure "_SEAS"."VibrationEquipmentEditorLocationsGridUpdate"( in @VesselId smallint,in @EquipmentId integer,in @MeasurementPointId integer,in @Orientation char(3),in @Barcode integer ) 
result( "Success" bit,"Error" long varchar ) 
begin
  call "SEAS"."VibrationEquipmentEditorLocationsGridUpdate"(@VesselId,@EquipmentId,@MeasurementPointId,@Orientation,@Barcode)
end