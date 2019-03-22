create procedure "_PNG"."PENGLaunchUrl"( 
  in @VesselId smallint,
  in @ContractId integer ) 
result( "Success" bit,"ErrorMessage" long varchar,"URL" long varchar ) 
begin
  call "PNG"."PENGLaunchUrl"(@VesselId,@ContractId)
end