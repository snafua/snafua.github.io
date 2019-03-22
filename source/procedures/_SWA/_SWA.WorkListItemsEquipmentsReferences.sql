create function "_SWA"."WorkListItemsEquipmentsReferences"( 
  in @RowId char(1024) ) 
returns long binary
begin
  return("SWA"."WorkListItemsEquipmentsReferences"(@RowId))
end