create procedure "_SEAS"."ReportConfigurationLoad"( in @ReportId integer ) 
result( "ReportConfiguration" long varchar ) 
begin
  call "SEAS"."ReportConfigurationLoad"(@ReportId)
end