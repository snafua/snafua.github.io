create procedure "_ELM"."TemplateLogsProcesses"( 
  in @SiteId integer,
  in @DepartmentId integer ) 
result( 
  "LogId" integer,
  "OperationalModeId" integer,
  "ProcessId" integer,
  "ProcessSequence" integer,
  "ProcessLookup" char(40),
  "ProcessTitle" char(128) ) 
begin
  call "ELM"."TemplateLogsProcesses"(@SiteId,@DepartmentId)
end