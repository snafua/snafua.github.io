create function "_SWA"."DashboardWidgetXSLT"( 
  in @WidgetId integer,
  in @Location char(128) ) 
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "SWA"."DashboardWidgetXSLT"(@WidgetId,@Location);
  return(@Result)
end