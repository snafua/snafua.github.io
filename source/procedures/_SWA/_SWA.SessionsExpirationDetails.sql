create procedure "_SWA"."SessionsExpirationDetails"( 
  in @Token "UNIQUEIDENTIFIERSTR" ) 
result( 
  "SessionExpiration" integer,
  "SessionWarning" integer ) 
begin
  call "SWA"."SessionsExpirationDetails"(@Token)
end