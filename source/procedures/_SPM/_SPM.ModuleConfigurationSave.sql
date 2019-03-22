create procedure "_SPM"."ModuleConfigurationSave"( 
  in @UserSettingId char(15),
  in @UserSetting long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SPM"."ModuleConfigurationSave"(@UserSettingId,@UserSetting)
end