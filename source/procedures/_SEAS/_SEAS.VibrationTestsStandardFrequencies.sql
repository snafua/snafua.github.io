create procedure "_SEAS"."VibrationTestsStandardFrequencies"( in @VesselId integer,in @EquipmentId integer,in @CPM real,
  in @Units integer default 1 ) 
result( "Frequency" real,"FrequencyLabel" char(3),"FrequencyUnits" char(10),"FrequencyDescription" char(80) ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsStandardFrequencies"(@VesselId,@EquipmentId,@CPM,@Units)
end