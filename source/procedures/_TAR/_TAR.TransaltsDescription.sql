create procedure --E-03924
--RJM
"_TAR"."TransaltsDescription"( 
  in @RowId char(1024),
  in @IsEncoded bit default 1 ) 
result( 
  "RowId" char(1024),
  "TransaltId" integer,
  "TransaltIdDescription" long varchar,
  "TransaltDescription" long varchar,
  "CanEditDescription" bit ) 
begin
  /*
2018-05-30 - JHM - Added TransaltDescription to support a name correction.  TransaltIdDescription kept for backwards compatability
*/
  call "TAR"."TransaltsDescription"(@RowId,@IsEncoded)
end