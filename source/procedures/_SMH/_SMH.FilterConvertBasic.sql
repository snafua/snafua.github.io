create procedure /*
* _SMH.FilterConvertBasic - thawley
*/
"_SMH"."FilterConvertBasic"( 
  in @JSONValues long varchar ) 
result( 
  "JSONValues" long varchar ) 
begin
  call "SMH"."FilterConvertBasic"(@JSONValues)
end