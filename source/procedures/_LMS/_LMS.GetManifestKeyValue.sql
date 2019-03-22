create procedure "_LMS"."GetManifestKeyValue"( 
  in @ManifestLessonId char(256),
  in @StatusKey long varchar ) 
result( 
  "StatusKeyValue" long varchar ) 
begin
  call "LMS"."GetManifestKeyValue"(@ManifestLessonId,@StatusKey)
end