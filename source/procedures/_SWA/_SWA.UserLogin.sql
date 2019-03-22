create procedure "_SWA"."UserLogin"( 
  in @UserLoginId char(128),
  in @UserPassword char(128) ) 
result( 
  "UserId" integer,
  "UserFullName" char(85),
  "UserPassword" char(128) ) 
begin
  call "SWA"."UserLogin"(@UserLoginId,@UserPassword)
end