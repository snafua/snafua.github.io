create procedure "_SPM"."ApplicationsSettingSelect"( 
  in @SettingId char(15),
  in @VesselId smallint default null ) 
result( 
  "Setting" long varchar ) 
begin
  call "SPM"."ApplicationsSettingSelect"(@SettingId,@VesselId)
end