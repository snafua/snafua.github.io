create procedure --JBH
"_TAE"."ExecutionStatus"( 
  in @RowId char(512) default null,
  in @OrderBy char(256) default null ) 
result( 
  "RowId" char(512),
  "Vessel" char(128),
  "ContractStatus" char(25),
  "Availability" char(128),
  "Region" char(128),
  "WorkItemTitle" char(128),
  "WorkItemNumber" char(25),
  "Category" char(5),
  "Awarded" numeric(15,2),
  "RFPs" integer,
  "RFPTotal" numeric(15,2),
  "Actual" numeric(15,2),
  "SpecRev" integer,
  "PlannedFY" char(7),
  "SpecificationFileName" char(256),
  "EstimateFileName" char(256),
  "HasSpecification" bit,
  "HasEstimate" bit,
  "OrderBy" char(128),
  "AvailabilityId" integer,
  "ContractId" integer,
  "ContractType" char(15),
  "VesselStatus" char(25),
  "GFMCost" numeric(15,2),
  "WorkItemId" integer,
  "IsComplete" bit ) 
begin
  /*
2017-06-09 RJM added VesselStatus
2018-07-03 RJM Added GFMCost
2018-11-14 B-20165 JBH - Added WorkItemId
2018-11-15 JHM D-04171 Fixes for encoding inconsistencies between 3.1.1, 3.4.2, 3.4.4 and above
2018-11-16 RJM Added IsComplete B-20058
*/
  declare @DoNotEncode bit;
  set @DoNotEncode = "SWA"."KeyValuePairParse"(@RowId,'DoNotEncode');
  call "TAE"."ExecutionStatus"(@RowId,@OrderBy,@DoNotEncode)
end