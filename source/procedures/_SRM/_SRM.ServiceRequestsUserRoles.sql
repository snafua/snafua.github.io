create procedure "_SRM"."ServiceRequestsUserRoles"( in @NodeId char(1024),in @OfficeCodeId integer ) 
result( 
  "UserRole" char(10) ) 
begin
  call "SRM"."ServiceRequestsUserRoles"(@NodeId,@OfficeCodeId)
end