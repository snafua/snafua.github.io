create procedure "_TAR"."CurrentUserNodeId"()
result( "NodeId" char(1024) ) 
begin
  call "TAR"."CurrentUserNodeId"()
end