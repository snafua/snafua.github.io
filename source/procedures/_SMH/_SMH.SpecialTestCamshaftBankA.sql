create procedure /*
CREATE PROCEDURE _SMH.RepairHistoricalComments(in @VesselId smallint,in @EquipmentId integer,in @MachineryHistoryId integer)
result(VesselId smallint,EquipmentId integer,MachineryHistoryId integer,HistoryTimestamp char(16),Attachments long varchar,Correspondance long varchar,RelatedItems long varchar,Originator char(85),HistoryDetails long varchar)
begin
call SMH.RepairHistoricalComments(@VesselId,@EquipmentId,@MachineryHistoryId)
end;
*/
-- JHM: 2013-06-12 - Moved to new file structure
"_SMH"."SpecialTestCamshaftBankA"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "ColumnId" integer,
  "ColumnTitle" integer,
  "VariableId" char(20),
  "VariableDesc" char(20),
  "VariableValue" char(20) ) 
begin
  call "SMH"."SpecialTestCamshaftBankA"(@VesselId,@EquipmentId,@TestResultId)
end