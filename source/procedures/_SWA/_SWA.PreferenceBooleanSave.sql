create procedure "_SWA"."PreferenceBooleanSave"( 
  in @PreferenceId char(15),
  in @Preference char(255),
  in @VesselId smallint default null ) 
begin
  call "SWA"."PreferenceBooleanSave"(@PreferenceId,@Preference,@VesselId)
end