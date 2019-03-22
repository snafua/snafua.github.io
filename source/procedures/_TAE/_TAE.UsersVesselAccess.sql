create procedure "_TAE"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
begin
  call "TAE"."UsersVesselAccess"(@VesselAccessList)
end