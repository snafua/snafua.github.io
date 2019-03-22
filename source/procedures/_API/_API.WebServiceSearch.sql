create procedure "_API"."WebServiceSearch"( 
  in @SearchString char(128) ) 
result( 
  "ServiceName" char(128) ) 
begin
  call "API"."WebServiceSearch"(@SearchString)
end