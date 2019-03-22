create procedure "_SWA"."DashboardSelectedVesselUpdate"( 
  in @VesselId smallint ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SWA"."DashboardSelectedVesselUpdate"(@VesselId)
end