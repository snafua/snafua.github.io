create procedure "_SWA"."ReportCategories"( 
  in @Module char(20) ) 
result( 
  "ModuleId" integer,
  "ReportCategoryId" integer,
  "ReportCategoryTitle" char(50) ) 
begin
  if(@Module = 'Dashboards') then
    set @Module = 'HOME'
  end if;
  call "SWA"."ReportCategories"(@Module)
end