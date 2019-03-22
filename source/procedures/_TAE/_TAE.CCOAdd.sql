create procedure "_TAE"."CCOAdd"( 
  in @RowId char(1024),
  in @CCO integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
B-20551 JBH 2019-01-30 Created procedure
*/
  declare @VesselId integer;
  declare @TransaltId integer;
  declare @WorkItemId integer;
  declare @TransaltCompletionReferenceId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @TransaltId = "SWA"."KeyValuePairParse"(@RowId,'TransaltId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  call "PNG"."TransaltsCompletionReferencesInsertUpdate"(@TransaltCompletionReferenceId,@VesselId,@TransaltId,'WorkItemMod',1);
  call "TAE"."CCOAdd"(@VesselId,@TransaltId,@TransaltCompletionReferenceId,@WorkItemId,@CCO)
end