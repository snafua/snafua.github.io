create procedure "_SMH"."OtherHistoricalComments"( 
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
  "TestResultIdValues" long varchar,
  "WorkRequestIdValues" long varchar,
  "RelatedItems" long varchar,
  "Originator" char(85),
  "HistoryDetails" long varchar,
  "ShowRelated" bit ) 
begin
  call "SMH"."OtherHistoricalComments"(@VesselId,@EquipmentId,@MachineryHistoryId)
end