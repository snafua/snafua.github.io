create procedure "_SMH"."HistoryItemRelatedItemsLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @HistoryItemId integer,
  in @ItemType char(20) ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "MachineryHistoryId" integer,
  "TestResultId" integer,
  "VesselName" char(80),
  "EquipmentName" char(80),
  "ItemType" char(20),
  "ItemSubType" char(20),
  "ItemDescription" char(50),
  "Originator" char(85),
  "ItemTimestamp" char(16),
  "AttachmentIdValues" long varchar,
  "TestResultIdValues" long varchar,
  "MachineryHistoryIdValues" long varchar,
  "WorkRequestIdValues" long varchar,
  "CorrespondanceIdValues" long varchar,
  "PriorityDescription" char(20),
  "PriorityIndex" integer,
  "AnalysisTimestamp" char(16),
  "SubmittedId" bit ) 
begin
  call "SMH"."HistoryItemRelatedItemsLoad"(@VesselId,@EquipmentId,@HistoryItemId,@ItemType)
end