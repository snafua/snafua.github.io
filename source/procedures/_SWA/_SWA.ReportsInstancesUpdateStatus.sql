create procedure "_SWA"."ReportsInstancesUpdateStatus"( 
  in @ReportInstanceId integer,
  in @ReportStatus char(25) ) 
begin
  call "SWA"."ReportsInstancesUpdateStatus"(@ReportInstanceId,@ReportStatus)
end