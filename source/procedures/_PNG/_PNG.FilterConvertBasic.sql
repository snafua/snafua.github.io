create procedure "_PNG"."FilterConvertBasic"( 
  in @JSONValues long varchar ) 
result( 
  /*
20130612 rbh created
*/
  "JSONValues" long varchar ) 
begin
  call "PNG"."FilterConvertBasic"(@JSONValues)
end