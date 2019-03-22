create procedure "_CRT"."CertificateLibraryAdministrativeNotes"( 
  in @RowId char(1024) ) 
result( 
  "CertificateLibraryAdministrativeNote" long varchar ) 
begin
  declare @CertificateId integer;
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  call "CRT"."CertificateLibraryAdministrativeNotes"(@CertificateId)
end