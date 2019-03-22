create procedure --D-04209
--RJM
"_TAR"."TransaltsProgressCommentSave"( 
  in @RowId char(1024),
  in @TransaltComment long varchar,
  in @VesselId integer default null ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-12-06 RJM E-04408 B-20306 B-20320 D-04209 Added VesselId input, formatted
*/
  call "TAR"."TransaltsProgressCommentSave"(@RowId,@TransaltComment,@VesselId)
end