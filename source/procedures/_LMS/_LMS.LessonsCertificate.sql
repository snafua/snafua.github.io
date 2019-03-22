create procedure "_LMS"."LessonsCertificate"( 
  in @LessonId integer ) 
result( 
  "CertificateId" integer,
  "CertificateSize" bigint,
  "CertificateData" long varchar ) 
begin
  declare @CourseId integer;
  set @CourseId = "LMS"."LessonsCourseId"(@LessonId);
  call "LMS"."CoursesCertificate"(@CourseId)
end