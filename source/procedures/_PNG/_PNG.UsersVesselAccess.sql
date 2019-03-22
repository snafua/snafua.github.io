create procedure "_PNG"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
begin
  call "PNG"."UsersVesselAccess"(@VesselAccessList)
end