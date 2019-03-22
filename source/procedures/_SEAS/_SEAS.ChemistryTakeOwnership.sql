create procedure "_SEAS"."ChemistryTakeOwnership"( 
  in @VesselId smallint,
  in @Month char(10) ) 
begin
  call "SEAS"."ChemistryTakeOwnership"(@VesselId,@Month)
end