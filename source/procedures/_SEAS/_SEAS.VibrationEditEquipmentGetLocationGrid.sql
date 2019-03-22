create procedure "_SEAS"."VibrationEditEquipmentGetLocationGrid"( in @VesselId smallint,in @EquipmentId integer,in @Mid integer ) 
result( "Bearing" integer,"BearingId" integer,"Location" char(65),"LocationId" integer,"Orientation" char(3),"OrientationId" char(3),"Barcode" char(10),"RowId" integer ) 
begin
  call "SEAS"."VibrationEditEquipmentGetLocationGrid"(@VesselId,@EquipmentId,@Mid)
end