create procedure --E-04408
--RJM
"_TAR"."TransaltSWFL"( 
  in @RowId char(1024),
  in @SearchByFilter char(50) default null ) 
result( 
  "RowId" char(1024),
  "SFWLTitle" char(50),
  "SFWLNumber" char(10),
  "OpenDate" date,
  "CompletionDate" date ) 
begin
  /*
2018-07-31 RJM
*/
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  call "TAR"."TransaltSWFL"(@VesselId,@SearchByFilter)
end