create procedure "_NS5"."GetTestResultEquipmentData"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "Rating" integer,"RPM" integer,"Variation" integer ) 
begin
  call "NS5"."GetTestResultEquipmentData"(@VesselId,@EquipmentId,@TestResultId)
end