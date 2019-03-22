create procedure "_ELM"."TemplateParametersValueSelections"( 
  in @SiteId integer,
  in @DepartmentId integer ) 
result( 
  "ParameterId" integer,
  "ValueSelection" char(20) ) 
begin
  call "ELM"."TemplateParametersValueSelections"(@SiteId,@DepartmentId)
end