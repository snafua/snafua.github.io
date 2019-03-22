create procedure --RJM
"_LIH"."WorkItems"( 
  in @NodeId char(256) default null,
  in @OrderBy char(256) default 'VesselName ASC',
  in @IsLimited bit default 1 ) 
result( 
  "RowId" char(512),
  "VesselId" smallint,
  "VesselName" char(256),
  "Availability" char(256),
  "LocationId" integer,
  "ShipyardId" integer,
  "ShipyardName" char(64),
  "ShipyardAddress" char(128),
  "ShipyardCity" char(128),
  "ShipyardState" char(2),
  "ShipyardPostalCode" char(10),
  "WorkItemTitle" char(128),
  "WorkItemNumber" char(32),
  "WorkItemCategory" char(8),
  "SpecificationAuthor" char(128),
  "WorkItemEstimatedCost" numeric(15,2),
  "WorkItemAwardedCost" numeric(15,2),
  "RFPs" integer,
  "WorkItemActualCost" numeric(15,2),
  "RFPsCost" numeric(15,2),
  "SpecificationFileName" long varchar,
  "HasSpecification" bit,
  "EstimateFileName" long varchar,
  "HasEstimate" bit,
  "HasAttachment" bit,
  "MyItemsCanSave" bit,
  "VesselItemsCanSave" bit,
  "IsServiceOrder" bit,
  "TotalRows" integer,
  "OrderBy" char(256),
  "WorkItemId" integer ) 
begin
  --RJM 2014-09-03 removed PENG JSON from result
  call "LIH"."WorkItems"(@NodeId,@OrderBy,@IsLimited)
end