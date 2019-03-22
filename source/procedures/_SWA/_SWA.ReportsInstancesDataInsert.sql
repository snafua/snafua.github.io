create procedure "_SWA"."ReportsInstancesDataInsert"( 
  in @ReportInstanceId integer,
  in @ReportInstanceData long binary ) 
begin
  call "SWA"."ReportsInstancesDataInsert"(@ReportInstanceId,@ReportInstanceData)
end