create procedure "_SWA"."ApplicationsExportsStyles"( 
  in @ApplicationId integer,
  in @GridId integer default null ) 
result( 
  "StyleName" char(50),
  "StyleValue" char(256) ) 
begin
  call "SWA"."ApplicationsExportsStyles"(@ApplicationId,@GridId)
end