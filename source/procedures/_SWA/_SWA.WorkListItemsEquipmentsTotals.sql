create procedure "_SWA"."WorkListItemsEquipmentsTotals"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "NumberOfEquipment" integer,
  "NumberOfParts" integer ) 
begin
  call "SWA"."WorkListItemsEquipmentsTotals"(@NodeId,@RowId,@ApplicationId)
end