create procedure "_SEAS"."ChemistryAnalysisChartData"( 
  in @VesselId smallint,
  in @LogId smallint,
  in @EquipmentId integer,
  in @Month char(10) ) 
result( 
  "VariableId" char(30),
  "VariableName" char(50),
  "VariableUnits" char(10),
  "VariableDataSet" long varchar,
  "VariableChartType" char(10),
  "VariableMinY" char(10),
  "VariableMaxY" char(10),
  "VariableGrouping" integer,
  "VariableMinAlarm" long varchar,
  "VariableMaxAlarm" long varchar,
  "VariableIsGlobal" bit ) 
begin
  call "SEAS"."ChemistryAnalysisChartData"(@VesselId,@LogId,@EquipmentId,@Month)
end