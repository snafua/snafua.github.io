create procedure "_SWA"."ReportListDescription"( 
  in "ReportId" integer ) 
result( 
  "Description" char(128) ) 
begin
  declare @Description char(128);
  set @Description = '';
  select @Description
end