create procedure "_PAV"."AvailabilitiesSubGridContractSummary"( 
  in @RowId char(256),
  in @OrderBy char(256) default null,
  in @IsLimited bit default 1 ) 
result( 
  "RowId" char(256),
  "Contract" char(128),
  "ContractStatus" char(25),
  "WorkItems" integer,
  "LineItems" integer,
  "RFPs" integer,
  "EstimatedCost" numeric(15,2),
  "AwardedCost" numeric(15,2),
  "ActualCost" numeric(15,2),
  "CanEdit" bit,
  "CanDelete" bit,
  "IsDeleted" bit,
  "CanRestore" bit,
  "OrderBy" char(256) ) 
begin
  call "PAV"."AvailabilitiesSubGridContractSummary"(@RowId,@OrderBy,@IsLimited)
end