create procedure "_PNG"."FilterConvertBasicNew"( 
  in @DateList long varchar,
  in @VesselList long varchar,
  in @PriorityList long varchar,
  in @RacList long varchar,
  in @ShipStatusList long varchar,
  in @ShoreStatusList long varchar,
  in @DispositionList long varchar,
  in @ForacList long varchar,
  in @AllText long varchar default null ) 
result( 
  "Attribute" char(256),
  "AttributeClass" char(10),
  "Comparator" char(25),
  "Value" char(1024),
  "AnyAll" bit ) 
begin
  call "PNG"."FilterConvertBasicNew"(@DateList,@VesselList,@PriorityList,@RacList,@ShipStatusList,@ShoreStatusList,@DispositionList,@ForacList,@AllText)
end