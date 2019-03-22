create procedure --AIM
"_SWA"."VesselNameList"( 
  in @VesselId integer default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(80) ) 
begin
  /*
2018-12-03 AIM E-04621 B-20307
*/
  call "SWA"."VesselNameList"(@VesselId)
end