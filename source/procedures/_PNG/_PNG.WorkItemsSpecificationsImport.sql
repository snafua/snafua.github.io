create procedure "_PNG"."WorkItemsSpecificationsImport"( 
  in @RowId char(1024),
  in @SpecificationRowIds long varchar,
  in @AllowOverwrite bit default 0,
  in @Overwrite bit default 0 ) 
result( 
  "Success" bit,
  "ErrrorMessage" long varchar,
  "TotalWorkItemsInserted" integer,
  "LibraryItemsInserted" integer ) 
begin
  if @AllowOverwrite is null then
    set @AllowOverwrite = 0
  end if;
  if @Overwrite is null then
    set @Overwrite = 0
  end if;
  call "PNG"."WorkItemsSpecificationsImport"(@RowId,@SpecificationRowIds,@AllowOverwrite,@Overwrite)
end