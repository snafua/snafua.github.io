create procedure "_SWA"."DashboardDimensions"( 
  in @DashboardId integer ) 
result( 
  "DashboardOrder" integer,
  "DashboardTitle" char(128),
  "DashboardType" char(20),
  "DashboardCols" integer,
  "DashboardRows" integer ) 
begin
  call "SWA"."DashboardDimensions"(@DashboardId)
end