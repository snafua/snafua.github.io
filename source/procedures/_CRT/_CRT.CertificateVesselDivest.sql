create procedure "_CRT"."CertificateVesselDivest"( 
  in @RowId char(1024),
  in @VesselRowId char(1024) ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @CertificateId integer;
  if("ISNUMERIC"(@VesselRowId) = 1) then
    set @VesselId = @VesselRowId
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@VesselRowId,'SiteId');
    if(@VesselId is null) then
      set @VesselId = "SWA"."KeyValuePairParse"(@VesselRowId,'VesselId')
    end if end if;
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  if(@VesselId is not null) and(@CertificateId is not null) then
    call "CRT"."CertificateVesselDivest"(@CertificateId,@VesselId)
  else
    select 0 as "Success",
      'No Vessel or Certificate selected' as "ErrorMessage"
      from "DUMMY"
  end if
end