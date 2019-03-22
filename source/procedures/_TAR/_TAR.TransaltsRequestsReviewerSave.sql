create procedure "_TAR"."TransaltsRequestsReviewerSave"( 
  in @RowId char(1024),
  in @Reviewer integer ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAR"."TransaltsRequestsReviewerSave"(@RowId,@Reviewer)
end