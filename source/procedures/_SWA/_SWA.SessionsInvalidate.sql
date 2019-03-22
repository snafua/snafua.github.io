create procedure "_SWA"."SessionsInvalidate"( 
  in @Token "UNIQUEIDENTIFIERSTR" ) 
begin
  call "SWA"."SessionsInvalidate"(@Token)
end