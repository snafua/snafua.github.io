create procedure "_SEAS"."VibrationTestsHeader"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "VesselName" char(80),"EquipmentDesc" char(80),"TestTimestamp" char(16),"PriorityDesc" char(20),"SeverityDesc" char(20) ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsHeader"(@VesselId,@EquipmentId,@TestResultId)
end