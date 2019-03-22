create procedure "_SMH"."RepairHistoricalComments"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "MachineryHistoryId" integer,
  "HistoryTimestamp" char(16),
  "Attachments" long varchar,
  "Correspondance" long varchar,
  "TestResultsIdValues" long varchar,
  "WorkRequestIdValues" long varchar,
  "RelatedItems" long varchar,
  "Originator" char(85),
  "HistoryDetails" long varchar,
  "ShowRelated" bit ) 
begin
  call "SMH"."RepairHistoricalComments"(@VesselId,@EquipmentId,@MachineryHistoryId)
end