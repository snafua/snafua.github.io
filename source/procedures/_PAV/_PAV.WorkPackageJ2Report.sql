create procedure "_PAV"."WorkPackageJ2Report"( 
  in @RowId char(1024) ) 
result( 
  "ItemNo" char(25),
  "Title" char(128),
  "PrimeLaborHours" numeric(15,2),
  "PrimeLaborRate" numeric(15,2),
  "PrimeMaterialPrice" numeric(15,2),
  "SubLaborHours" numeric(15,2),
  "SubLaborRate" numeric(15,2),
  "SubMaterialPrice" numeric(15,2),
  "MandatedSubPrice" numeric(15,2),
  "OtherCosts" numeric(15,2),
  "TotalPrice" numeric(15,2),
  "BasisOfEstimate" char(50),
  "SWBSRow" bit,
  "WorkItemRow" bit,
  "EstimateRow" bit,
  "SubTotalRow" bit,
  "TotalRow" bit ) 
begin
  declare @VesselId integer;
  declare @ContractId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @ContractId = "SWA"."KeyValuePairParse"(@RowId,'ContractId');
  call "PAV"."WorkPackageJ2Report"(@VesselId,@ContractId)
end