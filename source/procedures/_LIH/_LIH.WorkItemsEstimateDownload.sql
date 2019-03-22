create function "_LIH"."WorkItemsEstimateDownload"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @VesselId smallint;
  declare @WorkItemId integer;
  call "LIH"."RowIdDecode"(@RowId,@VesselId,@WorkItemId);
  return("LIH"."WorkItemsEstimateDownload"(@VesselId,@WorkItemId))
end