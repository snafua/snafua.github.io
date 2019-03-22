create function "_PAV"."ContractsDocumentsDownloadAttachment"( 
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
  set @Result = "PNG"."ContractsDocumentsDownloadAttachment"(@VesselId,@WorkItemId,@DocumentId);
  return(@Result)
end