create procedure "_SHC"."FilterConvertBasic"( in @JSONValues long varchar ) 
result( "JSONValues" long varchar ) 
begin
  call "SHC"."FilterConvertBasic"(@JSONValues)
end