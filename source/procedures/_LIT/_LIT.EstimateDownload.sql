create function "_LIT"."EstimateDownload"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @Result long binary;
  declare @VesselId smallint;
  declare @WorkItemLibraryId integer;
  declare @EstimateId integer;
  call "LIT"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId);
  set @EstimateId = "PNG"."WorkItemOrLibrayItemEstimateId"(@VesselId,null,@WorkItemLibraryId);
  if @EstimateId is not null then
    set @Result = "PNG"."EstimateDownload"(@EstimateId)
  end if;
  return(@Result)
end