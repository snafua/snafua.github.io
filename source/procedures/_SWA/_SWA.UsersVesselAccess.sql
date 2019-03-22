create procedure "_SWA"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
begin
  call "SWA"."UsersVesselAccess"(@VesselAccessList)
end