create procedure "_LMS"."GetManifestLessonStatus"()
result( 
  "ManifestLessonId" char(256),
  "StatusCode" integer ) 
begin
  call "LMS"."GetManifestLessonStatus"()
end