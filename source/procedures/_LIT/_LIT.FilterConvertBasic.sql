create procedure "_LIT"."FilterConvertBasic"( 
  in @VesselList long varchar,
  in @SWBSList long varchar,
  in @ItemTypeList long varchar,
  in @AllText long varchar default null ) 
result( 
  "Attribute" char(256),
  "AttributeClass" char(10),
  "Comparator" char(25),
  "Value" char(1024),
  "AnyAll" bit ) 
begin
  call "LIT"."FilterConvertBasic"(@VesselList,@SWBSList,@ItemTypeList,@AllText)
end