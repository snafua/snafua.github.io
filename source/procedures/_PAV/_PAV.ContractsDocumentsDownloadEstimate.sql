create function "_PAV"."ContractsDocumentsDownloadEstimate"( 
  in @RowId char(1024) ) 
returns long binary
begin
  declare @VesselId integer;
  declare @AvailabilityId integer;
  declare @ContractId integer;
  declare @WorkItemId integer;
  declare @DocumentId integer;
  declare @Result long binary;
  call "PAV"."ContractsDocumentsRowIdDecode"(@RowId,@VesselId,@AvailabilityId,@ContractId,@WorkItemId,@DocumentId);
  if @DocumentId is null then
    select "EstimateId"
      into @DocumentId from "PNG"."ViewWorkItems"
      where "VesselId" = @VesselId
      and "WorkItemId" = @WorkItemId
  end if;
  set @Result = "PNG"."ContractsDocumentsDownloadEstimate"(@DocumentId);
  return(@Result)
end