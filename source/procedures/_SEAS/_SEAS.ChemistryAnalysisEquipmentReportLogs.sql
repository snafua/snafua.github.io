create procedure "_SEAS"."ChemistryAnalysisEquipmentReportLogs"( 
  in @VesselId smallint,
  in @LogId smallint,
  in @EquipmentId integer,
  in @Month char(10) ) 
result( 
  "TestTimestamp" char(16),
  "TestVariableId" char(30),
  "TestVariableValue" char(10) ) 
begin
  call "SEAS"."ChemistryAnalysisEquipmentReportLogs"(@VesselId,@LogId,@EquipmentId,@Month)
end