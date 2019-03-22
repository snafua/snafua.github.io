create procedure --JBH
"_TAE"."ExecutionStatusAll"( 
  in @RowId char(512) default null,
  in @OrderBy char(256) default null,
  in @VesselStatus char(256) default null ) 
result( 
  "RowId" char(512),
  "VesselId" smallint,
  "TransaltId" integer,
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
2017-09-14 RJM created this copy of TAE.ExecutionStatus to display all vessels in the transalt
2018-07-03 RJM Added GFMCost
2018-10-22 B-19938, B-19949, E-04498 JBH - Added VesselId and TransaltId
2018-11-14 B-20165 JBH - Added WorkItemId
2018-11-16 RJM Added IsComplete B-20058
*/
  call "TAE"."ExecutionStatusAll"(@RowId,@OrderBy,@VesselStatus)
end