create procedure "_SEAS"."VibrationTestsPoints"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "MeasurementPointId" integer,"MeasurementPointCaption" char(80) ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsPoints"(@VesselId,@EquipmentId,@TestResultId)
end