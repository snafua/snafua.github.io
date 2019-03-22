create procedure "_SWA"."ReportTemplate"( 
  in @ReportId integer ) 
result( 
  "ReportTemplate" long varchar ) 
begin
  select "SWA"."ReportTemplate"(@ReportId) as "ReportTemplate"
end