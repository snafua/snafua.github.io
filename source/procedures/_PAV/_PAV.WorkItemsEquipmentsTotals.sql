create procedure "_PAV"."WorkItemsEquipmentsTotals"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "NumberOfEquipment" integer,
  "NumberOfParts" integer ) 
begin
  call "PAV"."WorkItemsEquipmentsTotals"(@NodeId,@RowId,@ApplicationId)
end