create procedure "_SEAS"."ReportGenerate"( in @ReportId integer,in @Parameters long varchar ) 
result( "Report" long binary ) 
begin
  call "SEAS"."ReportGenerate"(@ReportId,@Parameters)
end