create procedure "_TAE"."SFWLAdd"( 
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
  call "PNG"."TransaltsCompletionReferencesInsertUpdate"(@TransaltCompletionReferenceId,@VesselId,@TransaltId,'Repair',1);
  call "TAE"."SFWLAdd"(@VesselId,@TransaltId,@TransaltCompletionReferenceId,@WorkRequestId)
end