create procedure "_SWA"."DashboardWidgetsList"( 
  in @DashboardId integer ) 
result( 
  "WidgetId" integer,
  "WidgetTitle" char(128),
  "WidgetTop" integer,
  "WidgetLeft" integer,
  "WidgetHeight" integer,
  "WidgetWidth" integer ) 
begin
  call "SWA"."DashboardWidgetsList"(@DashboardId)
end