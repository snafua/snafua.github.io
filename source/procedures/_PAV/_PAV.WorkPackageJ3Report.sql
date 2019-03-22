create procedure "_PAV"."WorkPackageJ3Report"( 
  in @RowId char(1024) ) 
result( 
  "ItemNo" char(25),
  "Title" char(128),
  "Quantity" integer,
  "UnitOfMeasure" char(25),
  "UnitPrice" numeric(15,2),
  "Total" numeric(15,2),
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
  "LineItemRow" bit,
  "SubTotalRow" bit,
  "TotalRow" bit ) 
begin
  declare @VesselId integer;
  declare @ContractId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @ContractId = "SWA"."KeyValuePairParse"(@RowId,'ContractId');
  call "PAV"."WorkPackageJ3Report"(@VesselId,@ContractId)
end