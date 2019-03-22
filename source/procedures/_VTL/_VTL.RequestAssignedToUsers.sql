create procedure "_VTL"."RequestAssignedToUsers"()
result( "UserFullName" char(256),"UserId" integer ) 
begin
  call "VTL"."RequestAssignedToUsers"()
end