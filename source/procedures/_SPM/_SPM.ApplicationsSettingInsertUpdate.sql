create procedure "_SPM"."ApplicationsSettingInsertUpdate"( 
  in @SettingId char(15),
  in @Setting long varchar,
  in @VesselId smallint default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SPM"."ApplicationsSettingInsertUpdate"(@SettingId,@Setting,@VesselId)
end