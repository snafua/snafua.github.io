create procedure "_SEAS"."UserPreferencesLoad"()
result( "UseSingleTab" bit ) 
begin
  call "SEAS"."UserPreferencesLoad"()
end