create procedure "_SEAS"."ChemistryPropertiesMessage"( 
  in @VesselId smallint,
  in @Month char(10) ) 
result( 
  "AnalysisMessage" long varchar ) 
begin
  call "SEAS"."ChemistryPropertiesMessage"(@VesselId,@Month)
end