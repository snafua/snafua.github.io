create procedure "_PNG"."WorkitemContractUpdate"( 
  in @VesselId smallint,
  in @WorkRequestId integer,
  in @PengId char(40),
  in @DisplayedAs char(20) ) 
begin
  declare @WP_RepSiteId char(30);
  declare @WPSeq integer;
  if @PengId = 'NULL' then set @PengId = null end if;
  if "TRIM"(@PengId) = '' then set @PengId = null end if;
  if @PengId is null then
    set @WP_RepSiteId = null;
    set @WPSeq = null;
    set @DisplayedAs = null
  else
    call "PNG"."ParsePengId"(@PengId,@WP_RepSiteId,@WPSeq)
  end if;
  call "PNG"."WorkitemContractUpdate"(@VesselId,@WorkRequestId,@WP_RepSiteId,@WPSeq,@DisplayedAs)
end