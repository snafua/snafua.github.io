create procedure "_SEAS"."ChemistryOverdueMonths"( 
  in @VesselId smallint,
  in @Month char(10) ) 
result( 
  "VesselId" smallint,
  "VesselName" char(80),
  "Month" char(10),
  "IsLocked" bit ) 
begin
  call "SEAS"."ChemistryOverdueMonths"(@VesselId,@Month)
end