create procedure "_LMS"."ClassroomCourseCompletion"( 
  in @CourseId integer,
  in @NodeId char(256),
  in @DateCompleted date ) 
result( 
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  declare @UserId integer;
  set @UserId = "SWA"."KeyValuePairParse"(@NodeId,'UserId');
  call "LMS"."ClassroomCourseCompletion"(@CourseId,@UserId,@DateCompleted)
end