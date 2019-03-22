create procedure "_PNG"."WorkItemsCostEstimateSummary"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "Item" char(25),
  "Title" char(128),
  "Labor" decimal(15,2),
  "LaborCost" decimal(15,2),
  "OtherDollars" decimal(15,2),
  "LineItemCost" decimal(15,2),
  "TotalCost" decimal(15,2),
  "ExpenditureTypeCode" char(10),
  "WorkItemCategory" char(5),
  "VesselName" char(80),
  "ContractNumber" char(25),
  "Contractor" char(128),
  "SWBS" char(4),
  "ProjTaskFund" char(150),
  "AdjustedHours" decimal(15,2),
  "AdjustedMaterial" decimal(15,2) ) 
begin
  call "PNG"."WorkItemsCostEstimateSummary"(@VesselId,@ContractId)
end