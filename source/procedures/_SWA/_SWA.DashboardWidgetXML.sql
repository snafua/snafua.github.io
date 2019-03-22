create function "_SWA"."DashboardWidgetXML"( 
  in @WidgetId integer ) 
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "SWA"."DashboardWidgetXML"(@WidgetId);
  return(@Result)
end