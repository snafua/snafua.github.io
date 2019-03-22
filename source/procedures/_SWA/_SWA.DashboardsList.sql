create procedure "_SWA"."DashboardsList"()
result( 
  "DashboardId" integer,
  "DashboardTitle" char(128),
  "DashboardOrder" integer,
  "CanEdit" bit,
  "CanDelete" bit,
  "DashboardCols" integer,
  "DashboardRows" integer,
  "ProductionDatabase" bit ) 
begin
  call "SWA"."DashboardsList"()
end