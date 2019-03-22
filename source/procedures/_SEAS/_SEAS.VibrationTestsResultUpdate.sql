create procedure "_SEAS"."VibrationTestsResultUpdate"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer,in @TestResults long varchar,in @TestComments long varchar ) 
result( "Success" bit,"Error" long varchar ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsResultUpdate"(@VesselId,@EquipmentId,@TestResultId,@TestResults,@TestComments)
end