create procedure "_SWA"."UserLoginById"( 
  in @UserLoginId char(128) ) 
result( 
  "UserPassword" char(128) ) 
begin
  call "SWA"."UserLoginById"(@UserLoginId)
end