create procedure "_CRT"."CertificateSites"( 
  in @CertificateId integer ) 
result( 
  "SiteId" integer,
  "SiteTitle" char(128),
  "SiteAssigned" bit ) 
begin
  call "CRT"."CertificateSites"(@CertificateId)
end