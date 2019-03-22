create procedure "_LIT"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
begin
  call "LIT"."UsersVesselAccess"(@VesselAccessList)
end