create procedure "_SWA"."NavigationStateLoad"()
result( "NavigationPinned" char(5),"NavigationOpen" char(5) ) 
begin
  call "SMH"."UsersVesselAccess"('*');
  select "_SWA"."PreferenceBooleanLoad"('NavPinned') as "NavPinned",
    "_SWA"."PreferenceBooleanLoad"('NavOpen') as "NavOpen"
    from "DUMMY"
end