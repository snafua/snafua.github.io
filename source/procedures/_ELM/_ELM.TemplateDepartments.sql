create procedure "_ELM"."TemplateDepartments"( 
  in @DepartmentId integer default null ) 
result( 
  "DepartmentId" integer,
  "DepartmentName" char(128) ) 
begin
  call "ELM"."TemplateDepartments"(@DepartmentId)
end