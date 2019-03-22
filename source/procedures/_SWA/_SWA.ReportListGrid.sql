create procedure "_SWA"."ReportListGrid"( 
  in "CatId" integer ) 
result( 
  "ReportTitle" char(128),
  "ReportId" integer,
  "HasConfiguration" smallint ) 
begin
  declare @ReportTitle char(128);
  declare @ReportId integer;
  declare @HasConfiguration smallint;
  set @ReportTitle = '';
  set @ReportId = null;
  set @HasConfiguration = null
-- SELECT @ReportTitle, @ReportId, @HasConfiguration FROM DUMMY;
end