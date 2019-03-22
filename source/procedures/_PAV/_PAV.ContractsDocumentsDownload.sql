create procedure --RJM
"_PAV"."ContractsDocumentsDownload"( 
  in @RowId char(1024) default null ) 
result( 
  "RowId" char(1024),
  "ZipFileName" char(128),
  "DirectoryName" char(128),
  "DocumentType" char(15),
  "FileName" char(512),
  "FileExtn" char(15) ) 
begin
  declare @AvailabilityId integer;
  declare @WorkItemId integer;
  declare @VesselId integer;
  declare @ContractId integer;
  if "ECO"."CheckNull"(@RowId) is not null then
    call "PAV"."RowIdDecode"(@RowId,@VesselId,@AvailabilityId,@ContractId,@WorkItemId)
  end if;
  if "ECO"."CheckNull"(@VesselId) is not null and "ECO"."CheckNull"(@ContractId) is not null then
    select "PAV"."ContractsDocumentsRowIdEncode"("VesselId","AvailabilityId","ContractId","WorkItemId","DocumentId") as "RowId",
      "ContractNumber" as "ZipFileName",
      "WorkItemNumber" as "DirectoryName",
      "DocumentType" as "DocumentType",
      "DocumentName" as "FileName",
      "DocumentExtension" as "FileExtn"
      from "PNG"."ContractsDocumentsDownload"(@VesselId,@ContractId)
  end if
end