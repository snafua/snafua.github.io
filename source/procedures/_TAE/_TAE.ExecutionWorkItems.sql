create procedure "_TAE"."ExecutionWorkItems"( 
  in @RowId char(1024),
  in @OrderBy char(1024) default null ) 
result( 
  "RowId" char(1024),
  "AvailabilityId" integer,
  "ContractId" integer,
  "Availability" char(256),
  "Location" char(256),
  "WorkItemTitle" char(256),
  "WorkItemNumber" char(25),
  "WorkItemStatus" char(16),
  "WorkItemCategory" char(4),
  "WorkItemAwardedCost" numeric(15,2),
  "WorkItemRFPs" integer,
  "WorkItemRFPTotal" numeric(15,2),
  "WorkItemActualCost" numeric(15,2),
  "SpecificationRevisionNumber" smallint,
  "SpecificationFileName" char(256),
  "EstimateFileName" char(256),
  "HasSpecification" bit,
  "HasEstimate" bit,
  "OrderBy" char(1024),
  "CanDelete" bit,
  --was INTEGER
  "WorkItemId" char(20) ) 
begin
  /*
2016-07-21 RJM added CanDelete
2017-09-12 RJM Added WorkItemId to results
2018-09-06 B-19219: JBH Added AvailabilityID and ContractId to results
2018-11-15 JHM D-04171 Fixes for encoding inconsistencies between 3.1.1, 3.4.2, 3.4.4 and above
*/
  declare @DoNotEncode bit;
  set @DoNotEncode = "SWA"."KeyValuePairParse"(@RowId,'DoNotEncode');
  call "TAE"."ExecutionWorkItems"(@RowId,@DoNotEncode)
end