create procedure "_SRM"."ServiceRequestsNodePersonnelStatus"( in @NodeId char(256) default null ) 
result( "NodeId" char(256),"NodeTitle" char(128),"PersonnelStatus" char(10) ) 
begin
  call "SRM"."ServiceRequestsNodePersonnelStatus"(@NodeId)
end