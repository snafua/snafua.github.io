create procedure "_VTL"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
begin
  call "VTL"."UsersVesselAccess"(@VesselAccessList)
end