create procedure "_SWA"."ReportDetails"( 
  in @ApplicationId integer,
  in @ReportType char(25) default null ) 
result( 
  "ReportId" integer,
  "TemplateType" char(25),
  "TemplateFormat" char(25),
  "IsEnabled" bit ) 
begin
  call "SWA"."ReportDetails"(@ApplicationId,@ReportType)
end