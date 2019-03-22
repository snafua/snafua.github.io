create procedure --AIM
"_SWA"."ReportConfigurations"( 
  in @ReportConfigurationId integer default null ) 
result( 
  "ReportConfigurationId" integer,
  "ReportConfigurationTitle" char(50),
  "ReportConfiguration" long varchar ) 
begin
  /*
2018-12-03 AIM E-04621 B-20307
*/
  call "SWA"."ReportConfigurations"(@ReportConfigurationId)
end