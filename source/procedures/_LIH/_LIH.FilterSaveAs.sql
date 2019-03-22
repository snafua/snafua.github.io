create procedure "_LIH"."FilterSaveAs"( 
  in @Description char(128) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIH"."FilterSaveAs"(@Description)
end