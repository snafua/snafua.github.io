create procedure "_PAV"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
begin
  call "PAV"."UsersVesselAccess"(@VesselAccessList)
end