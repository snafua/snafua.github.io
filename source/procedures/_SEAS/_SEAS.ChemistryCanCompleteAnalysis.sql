create procedure "_SEAS"."ChemistryCanCompleteAnalysis"( 
  in @VesselId smallint,
  in @Month char(10) ) 
result( 
  "CanComplete" bit ) 
begin
  call "SEAS"."ChemistryCanCompleteAnalysis"(@VesselId,@Month)
end