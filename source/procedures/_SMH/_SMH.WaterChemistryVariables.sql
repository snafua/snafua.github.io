create procedure /*
CREATE PROCEDURE _SMH.WaterChemistryHistoricalComments(in @VesselId smallint,in @EquipmentId integer,in @HistoryItemId integer)
result(VesselId smallint,EquipmentId integer,HistoryItemId integer,PriorityIndex integer,PriorityDescription char(20), AnalysisTimestamp char(10),Attachments long varchar,Correspondance long varchar,RelatedItems long varchar,AnalysisDetails long varchar)
BEGIN

CALL SMH.WaterChemistryHistoricalComments(@VesselId,@EquipmentId,@HistoryItemId);

END;

*/
"_SMH"."WaterChemistryVariables"( in @VesselId smallint,in @EquipmentId integer,in @HistoryItemId integer ) 
result( "VariableId" char(30),"VariableName" char(50),"VariableUnits" char(20) ) 
begin
  call "SMH"."WaterChemistryVariables"(@VesselId,@EquipmentId,@HistoryItemId)
end