create procedure "_SWA"."DashboardWidgetsLibrary"( 
  in @DashboardId integer default null ) 
result( 
  "WidgetId" integer,
  "WidgetTitle" char(128),
  "WidgetCategory" char(25),
  "WidgetDescription" long varchar,
  "WidgetPosition" integer,
  "WidgetTop" integer,
  "WidgetLeft" integer,
  "WidgetHeight" integer,
  "WidgetWidth" integer,
  "WidgetEnabled" bit,
  "IsSelected" bit ) 
begin
  call "SWA"."DashboardWidgetsLibrary"(@DashboardId)
end