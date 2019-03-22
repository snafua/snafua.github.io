create procedure "_ELM"."TemplateLogs"( 
  in @SiteId integer,
  in @DepartmentId integer ) 
result( 
  "LogId" integer,
  "LogLookup" char(40),
  "LogTitle" char(128),
  "LogLocation" char(40) ) 
begin
  call "ELM"."TemplateLogs"(@SiteId,@DepartmentId)
end