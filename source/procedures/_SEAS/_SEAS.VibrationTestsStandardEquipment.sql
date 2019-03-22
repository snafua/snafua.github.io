create procedure "_SEAS"."VibrationTestsStandardEquipment"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer,in @Sort long varchar,in @MaxResults integer ) 
result( "VesselId" integer,"EquipmentId" char(80),"TestResultId" integer,"VesselName" char(80),"EquipmentDescription" char(80),"Timestamp" timestamp,"Priority" char(20) ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsStandardEquipment"(@VesselId,@EquipmentId,@Sort)
end