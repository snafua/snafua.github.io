create procedure --AIM
"_SWA"."ReportsList"( 
  in @ReportId integer default null ) 
result( 
  "ReportId" integer,
  "ReportTitle" char(50),
  "ReportDescription" char(1024),
  "ReportConfigurationId" integer ) 
begin
  /*
2018-12-03 AIM E-04621 B-20307
*/
  call "SWA"."ReportsList"(@ReportId)
end