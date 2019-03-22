create procedure "_SWA"."ReportGenerateSEAS"( 
  in @ReportId integer,
  in @Parameters long varchar ) 
result( 
  "Report" long binary ) 
begin
  select "SWA"."ReportGenerateSEAS"(@ReportId,@Parameters) as "Report"
end