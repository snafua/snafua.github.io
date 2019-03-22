create procedure "_TAR"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
begin
  call "TAR"."UsersVesselAccess"(@VesselAccessList)
end