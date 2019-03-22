create procedure "_SPM"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
begin
  call "SPM"."UsersVesselAccess"(@VesselAccessList)
end