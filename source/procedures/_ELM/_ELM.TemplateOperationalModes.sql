create procedure "_ELM"."TemplateOperationalModes"( 
  in @SiteId integer,
  in @DepartmentId integer ) 
result( 
  "LogId" integer,
  "OperationalModeId" integer,
  "OperationalMode" char(40) ) 
begin
  call "ELM"."TemplateOperationalModes"(@SiteId,@DepartmentId)
end