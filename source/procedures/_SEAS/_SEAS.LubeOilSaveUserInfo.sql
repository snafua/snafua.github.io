create procedure "_SEAS"."LubeOilSaveUserInfo"( in @UserEmail char(255),in @UserOffice char(30),in @UserPhone char(30) ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilSaveUserInfo"(@UserEmail,@UserOffice,@UserPhone)
end