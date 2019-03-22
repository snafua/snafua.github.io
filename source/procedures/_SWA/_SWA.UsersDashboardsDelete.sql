create procedure "_SWA"."UsersDashboardsDelete"( 
  in @DashboardId integer ) 
result( 
  "Success" bit ) 
begin
  call "SWA"."UsersDashboardsDelete"(@DashboardId);
  select 1 as "Success"
    from "DUMMY"
end