create procedure --E-04408 B-20306 B-20320
--RJM
"_TAR"."TransaltsProgressVessels"( 
  in @RowId char(1024) ) 
result( 
  "VesselRowId" char(1024),
  "VesselName" char(80) ) 
begin
  /*
2018-12-04 RJM --E-04408  B-20306 B-20320 Created
*/
  call "TAR"."TransaltsProgressVessels"(@RowId)
end