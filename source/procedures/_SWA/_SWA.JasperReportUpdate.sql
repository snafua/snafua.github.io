create procedure "_SWA"."JasperReportUpdate"( 
  in @ReportId integer,
  in @JasperDocument long varchar default null,
  in @DocType char(10) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SWA"."JasperReportUpdate"(@ReportId,@JasperDocument,@DocType)
end