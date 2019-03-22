create function "_SWA"."PreferenceBooleanLoad"( 
  in @PreferenceId char(15),
  in @VesselId smallint default null ) 
returns char(5)
begin
  declare @Result char(5);
  set @Result = "SWA"."PreferenceBooleanLoad"(@PreferenceId,@VesselId);
  return(@Result)
end