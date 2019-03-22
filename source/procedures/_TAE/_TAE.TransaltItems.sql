create procedure --JBH
"_TAE"."TransaltItems"( 
  in @NodeId char(256) default null,
  in @OrderBy char(256) default null,
  in @IsLimited bit default null ) 
result( 
  "RowId" char(512),
  "VesselId" smallint,
  "TransaltId" integer,
  "Vessel" char(128),
  "TransaltNumber" char(25),
  "SWBS" char(10),
  "Title" char(128),
  "Priority" char(25),
  "Category" char(25),
  "ApprovedDate" date,
  "PlannedFY" char(10),
  "ShipStatus" char(25),
  "EstCost" numeric(15,2),
  "AvailabilityId" char(10),
  "Availability" char(128),
  "ContractId" char(10),
  "Contract" char(128),
  "WorkItemId" char(10),
  "WorkItem" char(25),
  "IsServiceOrder" char(10),
  "WorkItemLibraryId" char(10),
  "SpecificationId" char(10),
  "ExecutionOutsidePENG" bit,
  "TotalRows" integer,
  "Status" char(25),
  "Comments" long varchar,
  "TransaltItemPermissions" integer,
  "ContractStatus" char(25),
  "WorkItemPermissions" integer ) 
begin
  /*
2017-02-07 RJM Added TransaltItemPermissions to results
2017-05-09 RJM Added UsePaging input parameter D-03850
2017-08-10 RJM Added ContractStatus
2019-01-20 B-19082 JBH Modified SWBS, AvailabilityId, ContractId, WorkItemId, IsServiceOreder, WorkItemLibraryId,
and SpecificationId input paramaters to accept 'Multiple' value as needed
*/
  call "TAE"."TransaltItems"(@NodeId,@OrderBy,@IsLimited)
end