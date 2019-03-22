create procedure "_ELM"."TemplateLogsParameters"( 
  in @SiteId integer,
  in @DepartmentId integer ) 
result( 
  "LogId" integer,
  "OperationalModeId" integer,
  "ProcessId" integer,
  "ParameterId" integer,
  "AreaId" integer,
  "AreaSequence" integer,
  "ProcessSequence" integer ) 
begin
  call "ELM"."TemplateLogsParameters"(@SiteId,@DepartmentId)
end