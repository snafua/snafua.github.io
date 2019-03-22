create procedure "_TAE"."SFWLRemove"( 
  in @TransaltRowId char(1024),
  in @SFWLRowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
B-20551 JBH 2016-01-30 Procedure created
*/
  declare @VesselId smallint;
  declare @WorkRequestId integer;
  declare @TransaltCompletionReferenceId integer;
  declare @TransaltId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@TransaltRowId,'VesselId');
  set @TransaltId = "SWA"."KeyValuePairParse"(@TransaltRowId,'TransaltId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@SFWLRowId,'WorkRequestId');
  select "TransaltCompletionReferenceId"
    into @TransaltCompletionReferenceId
    from "PNG"."TransaltsCompletionReferencesRepairs"
    where "VesselId" = @VesselId
    and "TransaltId" = @TransaltId
    and "WorkRequestId" = @WorkRequestId;
  call "TAE"."SFWLRemove"(@VesselId,@TransaltId,@TransaltCompletionReferenceId)
end