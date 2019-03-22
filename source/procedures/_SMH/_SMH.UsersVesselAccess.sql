create procedure "_SMH"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
begin
  call "SMH"."UsersVesselAccess"(@VesselAccessList)
end