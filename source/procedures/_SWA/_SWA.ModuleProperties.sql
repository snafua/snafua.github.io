create procedure "_SWA"."ModuleProperties"( 
  in @ApplicationId integer default null ) 
result( 
  "PropertyName" char(128),
  "PropertyValue" char(1024) ) 
begin
  call "SWA"."ModuleProperties"(@ApplicationId)
end