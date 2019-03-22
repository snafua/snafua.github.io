create procedure "_SEAS"."FuelOilSaveUserInfo"( 
  in @UserEmail char(255),
  in @UserOffice char(30),
  in @UserPhone char(30) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilSaveUserInfo"(@UserEmail,@UserOffice,@UserPhone)
end