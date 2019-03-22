create procedure --B-20098 E-04623
--RJM
"_PEM"."ContractLineItems"( 
  in @VesselId integer,
  in @ContractId integer,
  in @ContractLineItemCategory char(50),
  in @ContractLineItemType char(15) ) 
result( 
  "VesselId" integer,
  "ContractId" integer,
  "WorkItemId" integer,
  "CLINNumber" char(20),
  "ProcurementNumber" char(128),
  "ProcurementLineNumber" char(128),
  "PurchaseOrderNumber" char(128),
  "AccountDescription" char(128),
  "CLINDescription" char(128),
  "TaskCode" char(25),
  "ProjectCode" char(25),
  "FundCode" char(15),
  "ItemType" char(15),
  "CLINType" char(15),
  "ContractLineItemId" integer, --CLINId
  "ParentLineItemId" integer,
  "TotalFunding" numeric(15,2),
  "UsedFunding" numeric(15,2),
  "AvailableFunding" numeric(15,2),
  "Value" numeric(15,2),
  "LaborRate" numeric(15,2),
  "LaborHours" numeric(15,2),
  "GADollars" numeric(15,2), --AdminDollars
  "ProfitDollars" numeric(15,2),
  "WorkItemNumber" char(25),
  "HoursUsed" numeric(15,2),
  "HoursLeft" numeric(15,2) ) 
begin
  /*
2019-02-20 RJM B-20098 E-04623 created
*/
  call "PEM"."ContractLineItems"(@VesselId,@ContractId,@ContractLineItemCategory,@ContractLineItemType)
end