create procedure "_SWA"."WorkListItemsEquipments"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "RowId" char(1024),
  "AllowancePartsList" char(20),
  "PartsQuantity" integer,
  "EquipmentDescription" char(80),
  "FailureMode" char(25),
  "OrderBy" char(256),
  "CanEdit" bit,
  "CanRemove" bit,
  "CanEditReferenceData" bit,
  "CanRemoveReferenceData" bit ) 
begin
  call "SWA"."WorkListItemsEquipments"(@NodeId,@RowId,@ApplicationId)
end