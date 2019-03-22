create procedure "_NS5"."InsertExpertSystemResults"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer,in @ExpertSystemTimeStamp char(26),in @VibResultExpertSystem long varchar ) 
begin
  -- {JJD} NS5DB.dll Buffer Error Fix
  call "NS5"."ParseLastResult"(@VibResultExpertSystem);
  -- {JJD} NS5DB.dll Buffer Error Fix
  call "NS5"."InitializeVariables"();
  call "NS5"."InsertExpertSystemResults"(@VesselId,@EquipmentId,@TestResultId,@ExpertSystemTimeStamp,@VibResultExpertSystem)
end