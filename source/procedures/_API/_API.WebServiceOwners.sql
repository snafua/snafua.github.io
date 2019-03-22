create procedure "_API"."WebServiceOwners"()
result( 
  "OwnerName" char(128),
  "ModuleName" char(128) ) 
begin
  call "API"."WebServiceOwners"()
end