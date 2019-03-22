create procedure "_PAV"."FilterConvertBasicEx"( 
  in @Date long varchar,
  in @VesselList long varchar,
  in @AvailabilityList long varchar ) 
result( 
  "Attribute" char(256),
  "AttributeClass" char(10),
  "Comparator" char(25),
  "Value" char(1024),
  "AnyAll" bit ) 
begin
  call "PAV"."FilterConvertBasicEx"(@Date,@VesselList,@AvailabilityList)
end