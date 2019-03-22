create procedure "_PAV"."AvailabilityTypeTemplateWorkItemsImport"( 
  in @NodeId char(512),
  in @RowId char(1024),
  in @TemplateRowIds long varchar,
  in @Module char(512) default 'Availabilities' ) 
result( 
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  call "PAV"."AvailabilityTypeTemplateWorkItemsImport"(@NodeId,@RowId,@TemplateRowIds,@Module)
end