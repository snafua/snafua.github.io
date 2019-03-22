create procedure "_SWA"."VesselBillets"( 
  in @ApplicationId integer default null,
  in @RowId char(1024) default null,
  in @SelectedNodeId char(1024) default null,
  in @ParentNodeId char(1024) default null,
  in @SearchText char(1024) default null,
  in @VesselId integer default null,
  in @BilletAssignment char(25) default null ) 
result( 
  "BilletNodeId" char(1024),
  "BilletNodeText" char(240),
  "HasChildren" bit,
  "IsExpanded" bit,
  "IsSelected" bit ) 
begin
  declare @RowType char(20);
  declare @CurrentBilletId integer;
  set @SearchText = "ECO"."CheckNull"(@SearchText);
  set @ParentNodeId = "ECO"."CheckNull"(@ParentNodeId);
  if @VesselId is null then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  set @RowType = "SWA"."KeyValuePairParse"(@RowId,'RowType');
  if @BilletAssignment is null then
    set @BilletAssignment = @RowType
  end if;
  set @CurrentBilletId = "SWA"."KeyValuePairParse"("ISNULL"(@SelectedNodeId,@RowId),'BilletId');
  call "SWA"."VesselBillets"(@ApplicationId,@VesselId,@BilletAssignment,@ParentNodeId,@CurrentBilletId,@SearchText)
end