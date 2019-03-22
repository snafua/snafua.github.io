create procedure "_LIH"."ApplicationsSettingSelect"( 
  in @SettingId char(15),
  in @VesselId smallint default null ) 
result( 
  "Setting" long varchar ) 
begin
  call "LIH"."ApplicationsSettingSelect"(@SettingId,@VesselId)
end