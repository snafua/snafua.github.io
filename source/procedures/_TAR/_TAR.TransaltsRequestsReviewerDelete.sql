create procedure "_TAR"."TransaltsRequestsReviewerDelete"( in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "TAR"."TransaltsRequestsReviewerDelete"(@RowId)
end