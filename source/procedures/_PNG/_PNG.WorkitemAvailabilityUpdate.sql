create procedure "_PNG"."WorkitemAvailabilityUpdate"( 
  in @VesselId smallint,
  in @WorkRequestId integer,
  in @PengId char(40),
  in @DisplayedAs char(20) ) 
begin
  declare @RepSiteId char(30);
  declare @AvaId integer;
  if @PengId = 'NULL' then set @PengId = null end if;
  if "TRIM"(@PengId) = '' then set @PengId = null end if;
  if @PengId is null then
    set @RepSiteId = null;
    set @AvaId = null;
    set @DisplayedAs = null
  else
    call "PNG"."ParsePengId"(@PengId,@RepSiteId,@AvaId)
  end if;
  call "PNG"."WorkitemAvailabilityUpdate"(@VesselId,@WorkRequestId,@RepSiteId,@AvaId,@DisplayedAs)
end