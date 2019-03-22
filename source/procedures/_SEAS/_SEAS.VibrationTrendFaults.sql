create procedure "_SEAS"."VibrationTrendFaults"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "FaultTitle" char(80),"X" bigint,"Y" integer ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTrendFaults"(@VesselId,@EquipmentId)
end