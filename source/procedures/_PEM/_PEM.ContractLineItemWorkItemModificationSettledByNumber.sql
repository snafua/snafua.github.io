create procedure --B-20098 E-04623
--RJM
"_PEM"."ContractLineItemWorkItemModificationSettledByNumber"( 
  in @VesselId integer,
  in @ContractId integer,
  in @ContractLineItemNumber char(20) ) 
result( 
  "VesselId" integer,
  "ContractId" integer,
  "WorkItemId" integer,
  "WorkItemNumber" char(25),
  "WorkItemModId" integer,
  "WorkItemModNumber" char(10),
  "WorkItemModTitle" char(128),
  "AccountDescription" char(128),
  "ProjectCode" char(25),
  "TaskCode" char(25),
  "WorkItemCategory" char(5),
  "LaborHours" numeric(15,2),
  "LaborDollars" numeric(15,2),
  "OtherDollars" numeric(15,2),
  "SubcontractorDollars" numeric(15,2),
  "GADollars" numeric(15,2), --AdminDollars
  "ProfitDollars" numeric(15,2),
  "LineItemDollars" numeric(15,2),
  "TotalDollars" numeric(15,2),
  "Used" integer, --hardcode to 0
  "ContractLineItemId" integer, --CLINId
  "ItemType" char(15),
  "CLINDescription" char(128),
  "CLINNumber" char(20),
  "CLINLaborHours" numeric(15,2),
  "CLINLaborDollars" numeric(15,2),
  "CLINOtherDollars" numeric(15,2),
  "CLINLineItemDollars" numeric(15,2),
  "CLINSubcontractorDollars" numeric(15,2),
  "CLINGaDollars" numeric(15,2),
  "CLINProfitDollars" numeric(15,2) ) 
begin
  /*
2019-02-13 RJM B-20098 E-04623 created
*/
  call "PEM"."ContractLineItemWorkItemModificationSettledByNumber"(@VesselId,@ContractId,@ContractLineItemNumber)
end