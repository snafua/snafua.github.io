create procedure "_LIT"."TemplateVesselsGrid"( 
  in @RowId char(1024),
  in @NodeId char(256) default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(256) ) 
begin
  declare @VesselId smallint;
  declare @WorkItemLibraryId integer;
  declare @Type char(25);
  declare @Node char(25);
  declare @ItemType char(25);
  declare @VesselClassId integer;
  declare @ProgramManagerCode char(5);
  declare @WorkItemLibraryType char(25);
  if @RowId is not null then
    call "LIT"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId)
  elseif @NodeId is not null then
    call "LIT"."NodeIdDecode"(@NodeId,@Type,@Node,@VesselId,@ItemType,@VesselClassId,@ProgramManagerCode)
  end if;
  if @Node = 'My Items' then
    set @WorkItemLibraryType = 'User'
  else
    set @WorkItemLibraryType = 'Library'
  end if;
  call "LIT"."TemplateVesselsGrid"(@WorkItemLibraryId,@VesselId,@WorkItemLibraryType)
end