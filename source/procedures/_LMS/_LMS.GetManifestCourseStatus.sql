create procedure "_LMS"."GetManifestCourseStatus"()
result( 
  "ManifestCourseId" char(256),
  "StatusCode" integer ) 
begin
  call "LMS"."GetManifestCourseStatus"()
end