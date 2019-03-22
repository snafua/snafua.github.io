create procedure --RJM
"_APM"."MaintenancePartsSourceList"()
result( 
  "SourceDB" char(50),
  "IsAvailable" bit,
  "HasVessels" bit ) 
begin
  /*
2018-08-06 RJM E-04174
*/
  call "SWA"."PartsSourceList"()
end