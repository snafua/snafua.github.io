create function "_TAE"."EstimateDownload"( 
  in @RowId char(1024) ) 
returns long binary
begin
  declare @Result long varchar;
  declare @VesselId smallint;
  declare @TransaltId integer;
  declare @SWBS char(4);
  declare @WorkItemLibraryId integer;
  declare @WorkItemId integer;
  declare @AttachmentId integer;
  declare @SpecificationId integer;
  declare @EstimateId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
  set @EstimateId = "PNG"."WorkItemOrLibrayItemEstimateId"(@VesselId,@WorkItemId,@WorkItemLibraryId);
  if @EstimateId is not null then
    set @Result = "PNG"."EstimateDownload"(@EstimateId)
  end if;
  return(@Result)
end