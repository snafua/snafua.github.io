create procedure "_SEAS"."UserLogin"( in @UserLoginId char(128) ) 
result( "UserId" integer,"UserFullName" char(85),"UserPassword" char(128) ) 
begin
  call "SEAS"."UserLogin"(@UserLoginId)
end