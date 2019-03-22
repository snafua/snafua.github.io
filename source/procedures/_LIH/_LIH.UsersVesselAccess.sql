create procedure "_LIH"."UsersVesselAccess"( 
  in @VesselAccessList long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIH"."UsersVesselAccess"(@VesselAccessList)
end