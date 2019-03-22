create procedure "_ELM"."TemplateUsers"( 
  in @SiteId integer,
  in @DepartmentId integer ) 
result( 
  "UserId" integer,
  "UserLoginId" char(25),
  "UserPassword" char(25),
  "UserFullName" char(128),
  "PasswordHash" char(40) ) 
begin
  call "ELM"."TemplateUsers"(@SiteId,@DepartmentId)
end