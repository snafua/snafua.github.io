create procedure "_SRM"."CurrentUserNodeId"()
result( "NodeId" char(1024),"CanEditUserProfile" bit,"CanEditBranchProfile" bit,"CanEditTeamSpace" bit ) 
begin
  call "SRM"."CurrentUserNodeId"()
end