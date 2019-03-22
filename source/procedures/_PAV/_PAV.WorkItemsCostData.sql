create procedure "_PAV"."WorkItemsCostData"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer default null,
  in @Action char(15) default 'edit' ) 
result( 
  "AwardedLaborRate" numeric(15,2),
  "AwardedLaborHours" numeric(15,2),
  "AwardedLaborDollars" numeric(15,2),
  "AwardedOtherDollars" numeric(15,2),
  "AwardedLineItemDollars" numeric(15,2),
  "ModificationDollars" numeric(15,2),
  "AwardDate" char(10),
  "ContractorId" integer,
  "LocationId" integer,
  "CanEditAwardedCost" bit,
  "CanEditModificationCost" bit,
  "CanEditAwardDate" bit,
  "CanEditContractor" bit,
  "CanAddContractor" bit,
  "CanAddModifications" bit,
  "CanEditLocation" bit,
  "ContractorName" char(128),
  "LocationName" char(128) ) 
begin
  call "PAV"."WorkItemsCostData"(@NodeId,@RowId,@ApplicationId,@Action)
end