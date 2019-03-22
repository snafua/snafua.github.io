create procedure "_LMS"."ManifestCoursesCertificateEx"( 
  in @ManifestCourseId char(256) ) 
result( 
  "CertificateId" integer,
  "CertificateSize" bigint,
  "CertificateData" long binary ) 
begin
  declare @CourseId integer;
  set @CourseId = "LMS"."GetCourseIdFromManifest"(@ManifestCourseId);
  call "LMS"."CoursesCertificateEx"(@CourseId)
end