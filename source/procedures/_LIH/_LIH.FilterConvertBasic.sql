create procedure "_LIH"."FilterConvertBasic"( 
  in @Date long varchar,
  in @VesselList long varchar,
  in @SWBSList long varchar,
  in @AvailabilityList long varchar,
  in @LocationList long varchar,
  in @AllText long varchar default null ) 
result( 
  "Attribute" char(256),
  "AttributeClass" char(10),
  "Comparator" char(25),
  "Value" char(1024),
  "AnyAll" bit ) 
begin
  call "LIH"."FilterConvertBasic"(@Date,@VesselList,@SWBSList,@AvailabilityList,@LocationList,@AllText)
end