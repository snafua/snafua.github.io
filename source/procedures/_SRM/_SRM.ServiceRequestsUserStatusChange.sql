create procedure "_SRM"."ServiceRequestsUserStatusChange"( in @PersonnelStatus char(10) ) 
result( "UserId" integer,
  "Success" bit,
  @ErrorMessage long varchar ) 
begin
  call "SRM"."ServiceRequestsUserStatusChange"(@PersonnelStatus)
end