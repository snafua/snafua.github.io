create procedure "_ELM"."TemplateParameters"( 
  in @SiteId integer,
  in @DepartmentId integer ) 
result( 
  "ProcessId" integer,
  "ParameterId" integer,
  "ParameterLookup" char(40),
  "ParameterTitle" char(128),
  "EntryTypeId" integer,
  "ParameterBarcode" char(128),
  "ParameterUnits" char(25),
  "ParameterFormat" char(20),
  "AlarmMin" char(20),
  "AlarmMax" char(20),
  "RangeMin" char(20),
  "RangeMax" char(20),
  "AlarmPrompt" char(1024),
  "RangePrompt" char(1024),
  "ParameterPrompt" char(1024) ) 
begin
  call "ELM"."TemplateParameters"(@SiteId,@DepartmentId)
end