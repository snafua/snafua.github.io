create procedure "_SWA"."ReportInstanceDetails"( 
  in @ReportInstanceId integer ) 
result( 
  "UserId" integer,
  "ReportId" integer,
  "ReportFileName" char(128),
  "ReportDescription" char(128),
  "ReportStatus" char(25),
  "ReportInstanceData" long binary ) 
begin
  call "SWA"."ReportInstanceDetails"(@ReportInstanceId)
end