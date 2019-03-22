create procedure "_API"."WebServiceServices"( 
  in @OwnerName char(128) ) 
result( 
  "ServiceName" char(128) ) 
begin
  call "API"."WebServiceServices"(@OwnerName)
end