create procedure --
"_SPM"."MainGrid"( 
  in @NodeId char(256) default null,
  in @OrderBy char(256) default null,
  in @IsLimited bit default 1 ) 
result( 
  "RowId" char(512),
  "WorkItemLibraryId" integer,
  "VesselId" smallint,
  "AvailabilityId" integer,
  "ContractId" integer,
  "WorkItemId" integer,
  "SpecificationId" integer,
  "EstimateId" integer,
  "VesselName" char(80),
  "SWBS" char(4),
  "Title" char(128),
  "Frequency" char(27),
  "MaintenanceDate" char(10),
  "Status" char(9),
  "MaintenanceLastCompletionDate" char(10),
  "Estimate" numeric(15,2),
  "EstimateFileName" char(256),
  "SpecificationFileName" char(256),
  "Availability" char(128),
  "Contract" char(25),
  "WorkItem" char(25),
  "CanEdit" bit,
  "OrderBy" char(256),
  "IsServiceOrder" bit,
  "HasAttachment" bit,
  "HasEstimate" bit,
  "HasSpecification" bit,
  "TotalRows" integer,
  "HasMaintenance" integer ) 
begin
  /*
2018-03-27 JLD E-03649, B-17234
2018-11-29 AIM E-04621 B-19581
*/
  call "SPM"."MainGrid"(@NodeId,@OrderBy,@IsLimited)
end