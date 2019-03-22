create procedure "_SEAS"."ChemistryAnalysisEquipmentReportVariables"( 
  in @VesselId smallint,
  in @LogId smallint,
  in @EquipmentId integer,
  in @Month char(10) ) 
result( 
  "VariableId" char(30),
  "VariableName" char(50),
  "VariableUnits" char(20) ) 
begin
  call "SEAS"."ChemistryAnalysisEquipmentReportVariables"(@VesselId,@LogId,@EquipmentId,@Month)
end