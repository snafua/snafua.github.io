create procedure "_TAE"."CCORemove"( 
  in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
B-20551 JBH 2016-01-30 Procedure created
*/
  declare @VesselId integer;
  declare @TransaltId integer;
  declare @WorkItemId integer;
  declare @TransaltCompletionReferenceId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @TransaltId = "SWA"."KeyValuePairParse"(@RowId,'TransaltId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  select "TransaltCompletionReferenceId"
    into @TransaltCompletionReferenceId
    from "PNG"."TransaltsCompletionReferencesWorkItemsMods"
    where "VesselId" = @VesselId
    and "TransaltId" = @TransaltId
    and "WorkItemId" = @WorkItemId;
  call "TAE"."CCORemove"(@VesselId,@TransaltId,@TransaltCompletionReferenceId)
end