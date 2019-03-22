create procedure "_SPM"."FilterConvertBasic"( 
  in @JSONValues long varchar ) 
result( 
  "JSONValues" long varchar ) 
begin
  call "SPM"."FilterConvertBasic"(@JSONValues)
end