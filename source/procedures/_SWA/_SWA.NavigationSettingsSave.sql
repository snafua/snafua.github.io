create procedure "_SWA"."NavigationSettingsSave"( 
  in @ApplicationId integer,
  in @VesselIds long varchar,
  in @NavigationType char(20),
  in @NavigationHierarchy char(20) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SWA"."NavigationSettingsSave"(@ApplicationId,@VesselIds,@NavigationType,@NavigationHierarchy)
end