create function "_SPM"."SpecificationDownload"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @Result long varchar;
  declare @VesselId smallint;
  declare @WorkItemId integer;
  declare @WorkItemLibraryId integer;
  declare @SpecificationId integer;
  call "SPM"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId,@WorkItemId);
  if((@VesselId is not null) and(@WorkItemId is not null)) then
    select "SpecificationId"
      into @SpecificationId from "PNG"."ViewContractsAvaliabilitiesWorkItems"
      where "VesselId" = @VesselId
      and "WorkItemId" = @WorkItemId
  elseif @WorkItemLibraryId is not null then
    select "SpecificationId"
      into @SpecificationId from "PNG"."ViewWorkItemsLibrarySpecifications"
      where "WorkItemLibraryId" = @WorkItemLibraryId
  end if;
  set @Result = "PNG"."SpecificationDownload"(@SpecificationId);
  return(@Result)
end