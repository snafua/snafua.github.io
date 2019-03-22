create procedure --JBH
"_TAR"."TransaltsRequestsReviewSave"( 
  in @RowId char(1024),
  in @ReviewStatus char(25),
  in @TransaltComment long varchar default null,
  in @ApprovalDate date default null ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2017-03-16 RJM formatted
2018-11-07 B-20073 JBH:  Added Approval Date as an input parameter to allow the user the set it
rather than it defaulting to today's date.
*/
  call "TAR"."TransaltsRequestsReviewSave"(@RowId,@ReviewStatus,@TransaltComment,@ApprovalDate)
end