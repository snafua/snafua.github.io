create procedure --JBH
"_TAR"."TransaltsQuickEditSave"( 
  in @RowId char(1024),
  in @Status char(25),
  in @Priority char(25),
  in @ReviewStatus char(25),
  in @TransaltComment long varchar,
  in @ApprovalDate date default null ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-11-13 B-20073 JBH  Added Approval Date as an input parameter to allow the user to set it rather than
it defaulting to today's date.
*/
  call "TAR"."TransaltsQuickEditSave"(@RowId,@Status,@Priority,@ReviewStatus,@TransaltComment,@ApprovalDate)
end