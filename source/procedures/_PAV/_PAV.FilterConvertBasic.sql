create procedure "_PAV"."FilterConvertBasic"( 
  in @JSONValues long varchar ) 
result( 
  "JSONValues" long varchar ) 
begin
  call "PAV"."FilterConvertBasic"(@JSONValues)
end