create procedure "_PAV"."WorkItemsEquipments"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "RowId" char(1024),
  "AllowancePartsList" char(20),
  "PartsQuantity" integer,
  "EquipmentDescription" char(80),
  "HSCEngineering" varchar(12),
  "HSCLogistics" varchar(12),
  "OrderBy" char(256),
  "CanEdit" bit,
  "CanRemove" bit ) 
begin
  call "PAV"."WorkItemsEquipments"(@NodeId,@RowId,@ApplicationId)
end