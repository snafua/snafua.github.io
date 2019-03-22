create procedure "_PAV"."UsersFilterSettingsBasic"( 
  in @DateList long varchar,
  in @VesselList long varchar,
  in @AvailabilityTypeList long varchar,
  in @Description char(128) default null ) 
begin
  call "PAV"."UsersFilterSettingsBasic"(@DateList,@VesselList,@AvailabilityTypeList)
end