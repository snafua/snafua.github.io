create procedure /*
CREATE PROCEDURE _SMH.VibrationHistoricalComments(in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer)
result(VesselId smallint,EquipmentId integer,TestResultId integer,PriorityDescription char(20),PriorityIndex smallint,TestTimestamp char(16),AnalysisTimestamp char(16),Attachments long varchar,Correspondance long varchar,RelatedItems long varchar,Originator char(85),AnalysisDetails long varchar)
begin
call SMH.VibrationHistoricalComments(@VesselId,@EquipmentId,@TestResultId)
end;
*/
"_SMH"."WaterChemistryCharts"( in @VesselId smallint,in @EquipmentId integer,in @HistoryItemId integer ) 
result( "VariableId" char(30),"VariableName" char(50),"VariableUnits" char(10),"VariableDataSet" long varchar,"VariableChartType" char(10),"VariableMinY" char(10),"VariableMaxY" char(10),
  "VariableGrouping" integer,"VariableMinAlarm" long varchar,"VariableMaxAlarm" long varchar,"VariableIsGlobal" bit,"Month" char(7) ) begin
  call "SMH"."WaterChemistryCharts"(@VesselId,@EquipmentId,@HistoryItemId)
end