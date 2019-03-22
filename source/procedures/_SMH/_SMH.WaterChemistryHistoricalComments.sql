create procedure "_SMH"."WaterChemistryHistoricalComments"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @HistoryItemId integer ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "HistoryItemId" integer,
  "PriorityIndex" integer,
  "PriorityDescription" char(20),
  "AnalysisTimestamp" char(10),
  "Attachments" long varchar,
  "Correspondance" long varchar,
  "RelatedItems" long varchar,
  "AnalysisDetails" long varchar,
  "ShowRelated" bit ) 
begin
  call "SMH"."WaterChemistryHistoricalComments"(@VesselId,@EquipmentId,@HistoryItemId)
end