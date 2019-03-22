create procedure "_LIT"."ApplicationsSettingSelect"( 
  in @SettingId char(15),
  in @VesselId smallint default null ) 
result( 
  "Setting" long varchar ) 
begin
  call "LIT"."ApplicationsSettingSelect"(@SettingId,@VesselId)
end