create procedure "_LIT"."FilterSaveAs"( 
  in @Description char(128) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIT"."FilterSaveAs"(@Description)
end