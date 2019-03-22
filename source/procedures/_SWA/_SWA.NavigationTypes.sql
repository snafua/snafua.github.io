create procedure "_SWA"."NavigationTypes"( 
  in @ApplicationId integer ) 
result( 
  "NavigationType" char(20),
  "NavigationTypeDescription" char(50),
  "IsSelected" bit ) 
begin
  call "SWA"."NavigationTypes"(@ApplicationId)
end