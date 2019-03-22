create procedure "_PAV"."WorkItemsEquipmentsPermissions"( in @NodeId char(1024),in @RowId char(1024),
  in @ApplicationId integer default null,
  in @Action char(15) default 'view' ) 
result( "CanAddEquipment" bit,"CanAddMaterials" bit,"CanAddParts" bit,"CanOrder" bit ) 
begin
  call "PAV"."WorkItemsEquipmentsPermissions"(@NodeId,@RowId,@ApplicationId,@Action)
end