create procedure -- 04/18/2018 JLD E-03855 B-17530 Encode VesselId
"_CRT"."CertificateVessels"( 
  in @RowId char(1024) ) 
result( 
  "VesselId" char(128),
  "VesselName" char(128) ) 
begin
  declare @CertificateId integer;
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  call "CRT"."CertificateVessels"(@CertificateId)
end