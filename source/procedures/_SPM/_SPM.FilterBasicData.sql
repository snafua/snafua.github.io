create procedure "_SPM"."FilterBasicData"( 
  in @Date long varchar,
  in @VesselList long varchar,
  in @SWBSList long varchar,
  in @StatusList long varchar,
  in @AllText long varchar default null ) 
result( 
  "Attribute" char(256),
  "AttributeClass" char(10),
  "Comparator" char(25),
  "Value" char(1024),
  "AnyAll" bit ) 
begin
  call "SPM"."FilterBasicData"(@Date,@VesselList,@SWBSList,@StatusList,@AllText)
end