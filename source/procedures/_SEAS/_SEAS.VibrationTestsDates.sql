create procedure "_SEAS"."VibrationTestsDates"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "TestId" integer,"TestTimestamp" char(16),"PriorityIndex" integer ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsDates"(@VesselId,@EquipmentId,@TestResultId)
end