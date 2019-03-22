create procedure --B-13577 E-04574
--RJM
"_TAE"."VesselSubClass"( 
  in @VesselId integer ) 
result( 
  "VesselSubClass" char(20) ) 
begin
  /*
2018-11-20 B-13577 E-04574 RJM
*/
  call "TAE"."VesselSubClass"(@VesselId)
end