create procedure "_SRM"."ServiceRequestsUsersBranchSave"( 
  in @NodeId char(1024),
  in @Emails char(500),
  in @PhoneNumber char(20),
  in @UserRole char(10),
  in @OfficeCodeId integer,
  in @RemoveSupportPerson bit default 0,
  in @AreYouSure bit default 0 ) 
result( "NodeId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SRM"."ServiceRequestsUsersBranchSave"(@NodeId,@Emails,@PhoneNumber,@UserRole,@OfficeCodeId,@RemoveSupportPerson,@AreYouSure)
end