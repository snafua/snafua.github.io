create procedure "_SWA"."DashboardNavigationTree"()
result( 
  "NodeId" integer,
  "NodeName" char(80) ) 
begin
  call "SWA"."DashboardNavigationTree"()
end