create procedure "_SPM"."FilterSaveAs"( 
  in @Description char(128) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SPM"."FilterSaveAs"(@Description)
end