create procedure "_SWA"."DashboardsWidgetsDelete"( 
  in @DashboardId integer,
  in @WidgetId integer ) 
result( 
  "Success" bit ) 
begin
  call "SWA"."DashboardsWidgetsDelete"(@DashboardId,@WidgetId)
end