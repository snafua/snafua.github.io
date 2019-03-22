create procedure "_LIH"."UsersFilterBasicSave"( 
  in @Date long varchar,
  in @VesselList long varchar,
  in @SWBSList long varchar,
  in @AvailabiityList long varchar,
  in @LocationList long varchar,
  in @AllText long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIH"."UsersFilterBasicSave"(@Date,@VesselList,@SWBSList,@AvailabiityList,@LocationList,@AllText)
end