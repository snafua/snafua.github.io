create procedure "_SEAS"."VesselsChemistryAnalysisResults"( 
  in @VesselId smallint,
  in @LogId smallint,
  in @EquipmentId integer,
  in @Month char(10) ) 
result( 
  "Comment" long varchar,
  "Priority" char(20) ) 
begin
  declare @ChemistryAnalysisSequence integer;
  set @ChemistryAnalysisSequence = "SEAS"."VesselsChemistryAnalysisSequence"(@VesselId,@Month);
  call "SEAS"."VesselsChemistryAnalysisResults"(@VesselId,@LogId,@EquipmentId,@ChemistryAnalysisSequence)
end