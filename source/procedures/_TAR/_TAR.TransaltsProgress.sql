create procedure --E-04408 B-20306 B-20320
--RJM
"_TAR"."TransaltsProgress"( 
  in @RowId char(1024),
  in @Filter char(25) default null,
  in @VesselRowId char(1024) default null ) 
result( 
  "RowId" char(1024),
  "TransaltId" integer,
  "TransaltProgressId" integer,
  "TransaltProgressType" char(50),
  "TransaltProgressAuthorId" integer,
  "TransaltProgressAuthorName" char(256),
  "TransaltProgressTimeStamp" timestamp,
  "TransaltProgressDetails" long varchar ) 
begin
  /*
2018-12-04 RJM --E-04408  B-20306 B-20320 Add VesselRowId input. Formatted
*/
  call "TAR"."TransaltsProgress"(@RowId,@Filter,@VesselRowId)
end