create procedure "_PNG"."WorkitemWorkitemUpdate"( 
  in @VesselId smallint,
  in @WorkRequestId integer,
  in @PengId char(40),
  in @DisplayedAs char(20) ) 
begin
  declare @WI_RepSiteId char(30);
  declare @WISeq integer;
  if @PengId = 'NULL' then set @PengId = null end if;
  if "TRIM"(@PengId) = '' then set @PengId = null end if;
  if @PengId is null then
    set @WI_RepSiteId = null;
    set @WISeq = null;
    set @DisplayedAs = null
  else
    call "PNG"."ParsePengId"(@PengId,@WI_RepSiteId,@WISeq)
  end if;
  call "PNG"."WorkitemWorkitemUpdate"(@VesselId,@WorkRequestId,@WI_RepSiteId,@WISeq,@DisplayedAs)
end