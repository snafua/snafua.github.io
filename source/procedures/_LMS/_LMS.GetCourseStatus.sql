create procedure "_LMS"."GetCourseStatus"()
result( 
  "CourseId" integer,
  "StatusCode" integer ) 
-- JJD Returns Status Codes of -1 Not Started; 0 In Progress; 1 Complete
begin
  call "LMS"."GetCourseStatus"()
end