create procedure "_ELM"."TemplateLogsAreas"( 
  in @SiteId integer,
  in @DepartmentId integer ) 
result( 
  "LogId" integer,
  "OperationalModeId" integer,
  "AreaId" integer,
  "AreaSequence" integer,
  "AreaLookup" char(40),
  "AreaTitle" char(128) ) 
begin
  call "ELM"."TemplateLogsAreas"(@SiteId,@DepartmentId)
end