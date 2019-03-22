create procedure "_SEAS"."VesselsChemistryAnalysisHistoricalResults"( 
  in @VesselId smallint,
  in @LogId smallint,
  in @EquipmentId integer,
  in @Month char(10) ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "LogId" smallint,
  "Comment" long varchar,
  "Month" char(10),
  "Priority" char(20),
  "User" char(85),
  "OriginalSeverity" char(20),
  "DateTimeCompleted" timestamp ) 
begin
  declare @ChemistryAnalysisSequence integer;
  set @ChemistryAnalysisSequence = "SEAS"."VesselsChemistryAnalysisSequence"(@VesselId,@Month);
  call "SEAS"."VesselsChemistryAnalysisHistoricalResults"(@VesselId,@LogId,@EquipmentId,@ChemistryAnalysisSequence)
end