create procedure "_TAE"."TransaltLessonsLearned"( 
  in @RowId char(512) default null ) 
result( 
  "VesselName" char(128),
  "UserName" char(128),
  "LessonTimestamp" timestamp,
  "LessonText" long varchar ) 
begin
  call "TAE"."TransaltLessonsLearned"(@RowId)
end