create procedure "_PNG"."ReportFileName"( 
  in @RowIds long varchar default null,
  in @ReportId integer default null ) 
result( 
  "ReportFileName" char(256) ) 
begin
  select "PNG"."ReportFileName"(@RowIds,@ReportId) as "ReportFileName"
end