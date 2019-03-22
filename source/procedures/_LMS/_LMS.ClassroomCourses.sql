create procedure "_LMS"."ClassroomCourses"()
result( 
  "CourseId" integer,
  "CourseName" char(128) ) 
begin
  call "LMS"."ClassroomCourses"()
end