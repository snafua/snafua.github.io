create procedure "_SWA"."ReportListCategories"()
result( 
  "CategoryId" integer,
  "CategoryTitle" char(128) ) 
begin
  declare @CategoryId integer;
  declare @CategoryTitle char(128);
  set @CategoryId = 1;
  set @CategoryTitle = 'General';
  select @CategoryId,@CategoryTitle from "DUMMY"
end