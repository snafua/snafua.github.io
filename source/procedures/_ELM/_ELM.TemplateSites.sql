create procedure "_ELM"."TemplateSites"( 
  in @SiteId integer default null ) 
result( 
  "SiteId" integer,
  "SiteName" char(128) ) 
begin
  call "ELM"."TemplateSites"(@SiteId)
end