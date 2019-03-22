create procedure "_SWA"."UsersDashboardsSettings"( 
  in @DashboardOrder integer,
  in @DashboardType char(20),
  in @DashboardTitle char(128),
  in @DashboardCols integer,
  in @DashboardRows integer,
  in @DashboardId integer ) 
result( 
  "DashboardId" integer ) 
begin
  call "SWA"."UsersDashboardsSettings"(@DashboardOrder,@DashboardType,@DashboardTitle,@DashboardCols,@DashboardRows,@DashboardId)
end