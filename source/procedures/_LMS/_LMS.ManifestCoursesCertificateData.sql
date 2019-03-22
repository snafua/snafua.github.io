create procedure "_LMS"."ManifestCoursesCertificateData"( 
  in @ManifestCourseId char(256) ) 
result( 
  "CertificateFieldText" char(128),
  "XCoordinate" integer,
  "YCoordinate" integer,
  "FontSize" integer,
  "BoldFont" integer,
  "CenteredText" integer ) 
begin
  declare @CourseId integer;
  set @CourseId = "LMS"."GetCourseIdFromManifest"(@ManifestCourseId);
  call "LMS"."CoursesCertificateData"(@CourseId)
end