create procedure "_SRM"."TeamMessageGroupUserList"( in @RowId char(1024) ) 
result( "RowId" char(1024),
  "ServiceRequestId" integer,
  "NodeId" char(1024),
  "UserId" integer,
  "UserFullName" char(256) ) 
begin
  call "SRM"."TeamMessageGroupUserList"(@RowId)
end