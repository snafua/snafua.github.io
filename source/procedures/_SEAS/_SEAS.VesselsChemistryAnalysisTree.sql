create procedure "_SEAS"."VesselsChemistryAnalysisTree"( 
  in @VesselId smallint,
  in @Month char(10) ) 
result( 
  "Id" char(50),
  "ParentId" char(50),
  "Type" char(10),
  "Text" char(80),
  "Date" char(10),
  "Severity" char(20),
  "Expected" smallint,
  "Missed" smallint,
  "Alarmed" smallint,
  "Taken" smallint,
  "IsComplete" bit,
  "IsLeaf" bit,
  "BeingWatched" bit ) 
begin
  declare @ChemistryAnalysisSequence integer;
  set @ChemistryAnalysisSequence = "SEAS"."VesselsChemistryAnalysisSequence"(@VesselId,@Month);
  call "SEAS"."VesselsChemistryAnalysisTree"(@VesselId,@ChemistryAnalysisSequence,@Month)
end