create procedure "_SPM"."ModuleConfiguration"()
result( 
  "UserSettingId" char(15),
  "UserSetting" long varchar ) 
begin
  call "SPM"."ModuleConfiguration"()
end