create procedure "_PAV"."WorkItemsEquipmentsHierarchies"( 
  in @NodeId char(1024),
  in @RowId char(1024) ) 
result( 
  "HierarchyType" char(25),
  "HierarchyTypeDisplayedAs" char(50) ) 
begin
  call "PAV"."WorkItemsEquipmentsHierarchies"(@NodeId,@RowId)
end