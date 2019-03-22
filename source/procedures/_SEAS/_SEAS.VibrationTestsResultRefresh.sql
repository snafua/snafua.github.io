create procedure "_SEAS"."VibrationTestsResultRefresh"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "TestResult" long varchar ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsResultRefresh"(@VesselId,@EquipmentId,@TestResultId)
end