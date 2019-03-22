create procedure "_PAV"."WorkItemsEquipmentsList"( 
  in @ModuleNodeId char(1024),
  in @ModuleRowId char(1024),
  in @EquipmentNodeId char(1024),
  in @HierarchyType char(50),
  in @SearchQuery long varchar default null,
  in @ApplicationId integer default null ) 
result( 
  "NodeId" char(1024),
  "NodeTitle" char(1024),
  "HasChildren" bit ) 
begin
  if @ApplicationId is null then set @ApplicationId = "PAV"."ApplicationId"() end if;
  if @HierarchyType = 'System/Description' then
    call "PAV"."WorkItemsSystemsEquipments"(@ModuleNodeId,@ModuleRowId,@EquipmentNodeId,@SearchQuery,@ApplicationId)
  end if
end