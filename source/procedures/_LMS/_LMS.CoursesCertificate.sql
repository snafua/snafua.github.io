create procedure "_LMS"."CoursesCertificate"( 
  in @CourseId integer ) 
result( 
  "CertificateId" integer,
  "CertificateSize" bigint,
  "CertificateData" long varchar ) 
begin
  call "LMS"."CoursesCertificate"(@CourseId)
end