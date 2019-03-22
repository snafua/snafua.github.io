create procedure "_SMH"."VibrationHistoricalComments"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "TestResultId" integer,
  "PriorityDescription" char(20),
  "PriorityIndex" smallint,
  "TestTimestamp" char(16),
  "AnalysisTimestamp" char(16),
  "Attachments" long varchar,
  "Correspondance" long varchar,
  "RelatedItems" long varchar,
  "Originator" char(85),
  "AnalysisDetails" long varchar,
  "ShowRelated" bit ) 
begin
  call "SMH"."VibrationHistoricalComments"(@VesselId,@EquipmentId,@TestResultId)
end