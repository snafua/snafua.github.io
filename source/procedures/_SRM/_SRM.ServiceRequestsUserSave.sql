create procedure "_SRM"."ServiceRequestsUserSave"( 
  in @Emails char(500),
  in @PhoneNumber char(20),
  in @UserRole char(10),
  in @OfficeCodeId integer,
  in @Attachment long binary ) 
result( "NodeId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SRM"."ServiceRequestsUserSave"(@Emails,@PhoneNumber,@UserRole,@OfficeCodeId,@Attachment)
end