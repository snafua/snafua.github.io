create procedure "_SWA"."DashboardsWidgetsSettings"( 
  in @DashboardId integer,
  in @WidgetId integer,
  in @WidgetPosition integer,
  in @WidgetTop integer,
  in @WidgetLeft integer,
  in @WidgetHeight integer,
  in @WidgetWidth integer ) 
result( 
  "Success" bit ) 
begin
  call "SWA"."DashboardsWidgetsSettings"(@DashboardId,@WidgetId,@WidgetPosition,@WidgetTop,@WidgetLeft,@WidgetHeight,@WidgetWidth)
end