create procedure "_SHC"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
begin
  call "SHC"."UsersVesselAccess"(@VesselAccessList)
end