create procedure "_LMS"."LessonsCertificateData"( 
  in @LessonId integer ) 
result( 
  "CertificateFieldText" char(128),
  "XCoordinate" integer,
  "YCoordinate" integer,
  "FontSize" integer,
  "BoldFont" integer,
  "CenteredText" integer ) 
begin
  declare @CourseId integer;
  set @CourseId = "LMS"."LessonsCourseId"(@LessonId);
  call "LMS"."CoursesCertificateData"(@CourseId)
end