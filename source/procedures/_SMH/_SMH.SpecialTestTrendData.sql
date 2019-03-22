create procedure /*
CREATE PROCEDURE _SMH.SpecialTestsHistoricalComments(in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer)
result(VesselId smallint,EquipmentId integer,TestResultId integer,PriorityDescription char(20),PriorityIndex smallint,TestTimestamp char(16),AnalysisTimestamp char(16),Attachments long varchar,Correspondance long varchar,RelatedItems long varchar,Originator char(85),AnalysisDetails long varchar)
begin
call SMH.SpecialTestsHistoricalComments(@VesselId,@EquipmentId,@TestResultId)
end;
*/
-- JHM: 2013-06-12 - Moved to new file structure
"_SMH"."SpecialTestTrendData"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "TestResultId" integer,
  "TestDate" bigint,
  "VariableId" char(20),
  "VariableName" char(20),
  "VariableUnits" char(20),
  "VariableValue" char(20),
  "DontTrend" bit ) 
begin
  call "SMH"."SpecialTestTrendData"(@VesselId,@EquipmentId,@TestResultId)
end