create function "_SPM"."EstimateDownload"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @Result long varchar;
  declare @VesselId integer;
  declare @WorkItemLibraryId integer;
  declare @WorkItemId integer;
  declare @EstimateId integer;
  call "SPM"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId,@WorkItemId);
  set @EstimateId = "PNG"."WorkItemOrLibrayItemEstimateId"(@VesselId,@WorkItemId,@WorkItemLibraryId);
  if @EstimateId is not null then
    set @Result = "PNG"."EstimateDownload"(@EstimateId)
  end if;
  return(@Result)
end