create procedure "_AWB"."PermissionsWorkbookMaintenanceQuickEdit"( 
  in @ApplicationId integer,
  in @RowIds long varchar ) 
result( 
  "CompleteSelected" bit,
  "DeferSelected" bit,
  "UncompleteSelected" bit,
  "CompleteEnabled" bit,
  "DeferEnabled" bit,
  "UncompleteEnabled" bit,
  "DisabledMessage" long varchar ) 
begin
  call "AWB"."PermissionsWorkbookMaintenanceQuickEdit"(@ApplicationId,@RowIds)
end