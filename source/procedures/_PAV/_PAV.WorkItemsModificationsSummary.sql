create procedure "_PAV"."WorkItemsModificationsSummary"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "RowId" char(1024),
  "ModificationNumber" char(10),
  "ModificationTitle" char(128),
  "ModificationClassification" char(25),
  "ModificationStatus" char(25),
  "ModificationType" char(10),
  "ModificationCompletion" numeric(5,2),
  "ModificationEstimate" numeric(15,2),
  "ModificationAwarded" numeric(15,2),
  "ModificationActual" numeric(15,2),
  "CanEdit" bit,
  "CanDelete" bit ) 
begin
  call "PAV"."WorkItemsModificationsSummary"(@NodeId,@RowId,@ApplicationId)
end