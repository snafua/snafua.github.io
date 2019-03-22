create procedure "_SWA"."UserPasswordUpdate"( 
  in @UserLoginId char(128),
  in @OldPassword char(255),
  in @NewPassword char(255) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SWA"."UserPasswordUpdate"(@UserLoginId,@OldPassword,@NewPassword)
end