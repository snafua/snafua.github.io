create procedure "_SEAS"."ChemistryRelinquishOwnership"( 
  in @VesselId smallint,
  in @Month char(10) ) 
begin
  call "SEAS"."ChemistryRelinquishOwnership"(@VesselId,@Month)
end