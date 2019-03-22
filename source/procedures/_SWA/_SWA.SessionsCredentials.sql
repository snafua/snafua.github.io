create procedure "_SWA"."SessionsCredentials"( 
  in @Token "UNIQUEIDENTIFIERSTR" ) 
result( 
  "UserLoginId" char(128),
  "UserPassword" char(128) ) 
begin
  call "SWA"."SessionsCredentials"(@Token)
end