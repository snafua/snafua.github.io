create procedure "_SEAS"."UserPreferencesSave"( in @UseSingleTab long varchar ) 
result( "Success" bit,"Error" long varchar ) 
begin
  call "SEAS"."UserPreferencesSave"(@UseSingleTab)
end