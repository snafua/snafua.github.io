create procedure "_PNG"."HSCSearchScope"()
result( 
  "SearchScope" char(15),
  "ScopeId" smallint,
  "IsSelected" bit ) 
begin
  call "PNG"."HSCSearchScope"()
end