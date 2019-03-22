create procedure "_LMS"."CoursesCertificateData"( 
  in @CourseId integer ) 
result( 
  "CertificateFieldText" char(128),
  "XCoordinate" integer,
  "YCoordinate" integer,
  "FontSize" integer,
  "BoldFont" integer,
  "CenteredText" integer ) 
begin
  call "LMS"."CoursesCertificateData"(@CourseId)
end