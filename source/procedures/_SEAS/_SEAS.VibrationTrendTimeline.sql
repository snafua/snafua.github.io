create procedure "_SEAS"."VibrationTrendTimeline"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "X" bigint,"Y" integer ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTrendTimeline"(@VesselId,@EquipmentId)
end