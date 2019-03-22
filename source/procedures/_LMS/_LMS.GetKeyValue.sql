create procedure "_LMS"."GetKeyValue"( 
  in @LessonId integer,
  in @StatusKey long varchar ) 
result( 
  "StatusKeyValue" long varchar ) 
begin
  call "LMS"."GetKeyValue"(@LessonId,@StatusKey)
end