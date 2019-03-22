create procedure "_ELM"."TemplateLogsLocations"( 
  in @SiteId integer,
  in @DepartmentId integer ) 
result( 
  "LogLocation" char(40) ) 
begin
  call "ELM"."TemplateLogsLocations"(@SiteId,@DepartmentId)
end