create procedure "_TAE"."ReportDetails"( 
  in @ApplicationId integer ) 
result( 
  "ReportId" integer,
  "TemplateType" char(10),
  "TemplateFormat" char(10),
  "IsEnabled" bit ) 
begin
  call "TAE"."ReportDetails"(@ApplicationId)
end