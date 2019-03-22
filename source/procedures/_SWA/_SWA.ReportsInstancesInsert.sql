create procedure "_SWA"."ReportsInstancesInsert"( 
  in @ReportId integer default null,
  in @ReportFileName char(128),
  in @ReportDescription char(128) default null ) 
result( 
  "ReportInstanceId" integer ) 
begin
  declare @ReportInstanceId integer;
  if(@ReportDescription is null) then
    set @ReportDescription = "STRING"('Generated on ',"NOW"())
  end if;
  set @ReportInstanceId = "SWA"."ReportsInstancesInsert"(@ReportId,@ReportFileName,@ReportDescription);
  select @ReportInstanceId as "ReportInstanceId"
    from "DUMMY"
end