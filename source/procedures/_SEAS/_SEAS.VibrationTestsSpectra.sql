create procedure "_SEAS"."VibrationTestsSpectra"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer,in @MeasurementPointId integer,
  in @Scaleing integer default 0,
  in @Measurement integer default 0,
  in @Reference integer default 0,
  in @AUnits integer default 0,
  in @Peak integer default 0,
  in @FUnits integer default 0 ) 
result( "Axis" char(25),"Range" char(25),"CPM" real,"Data" long varchar ) 
-- NUMERIC(35,25),
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsSpectra"(@VesselId,@EquipmentId,@TestResultId,@MeasurementPointId,@Scaleing,@Measurement,@Reference,@AUnits,@Peak,@FUnits)
end