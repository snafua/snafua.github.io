create procedure "_PNG"."EFDSearchScope"()
result( 
  "SearchScope" char(15),
  "ScopeId" smallint,
  "IsSelected" bit ) 
begin
  call "PNG"."EFDSearchScope"()
end