create procedure "_LMS"."CoursesCertificateEx"( 
  in @CourseId integer ) 
result( 
  "CertificateId" integer,
  "CertificateSize" bigint,
  "CertificateData" long binary ) 
begin
  call "LMS"."CoursesCertificateEx"(@CourseId)
end