create function "_SWA"."ReportConfiguration"( 
  in @ReportId integer ) 
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "SWA"."ReportConfiguration"(@ReportId);
  return(@Result)
end